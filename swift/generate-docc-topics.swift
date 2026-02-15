#!/usr/bin/env swift

import Foundation

// MARK: - Configuration

let sourcesDir = "Sources/LeetCode"
let doccFile = "\(sourcesDir)/LeetCode.docc/LeetCode.md"
let topicsMarker = "## Topics"

// MARK: - Scan source files

let fm = FileManager.default
let sourceURL = URL(fileURLWithPath: sourcesDir)

guard let enumerator = fm.enumerator(
    at: sourceURL,
    includingPropertiesForKeys: nil,
    options: [.skipsHiddenFiles]
) else {
    fputs("Error: Cannot read \(sourcesDir)\n", stderr)
    exit(1)
}

struct Problem {
    let enumName: String
    let difficulty: String
}

let enumPattern = try NSRegularExpression(pattern: #"^public enum (P\d{4})"#, options: .anchorsMatchLines)
let difficultyPattern = try NSRegularExpression(pattern: #"\*\*Difficulty:\*\*\s*(Easy|Medium|Hard)"#)

var problems: [Problem] = []
var warnings: [String] = []

for case let fileURL as URL in enumerator {
    guard fileURL.pathExtension == "swift" else { continue }
    // Skip files inside .docc
    guard !fileURL.path.contains(".docc") else { continue }

    let content = try String(contentsOf: fileURL, encoding: .utf8)
    let range = NSRange(content.startIndex..., in: content)

    let enumMatch = enumPattern.firstMatch(in: content, range: range)
    let difficultyMatch = difficultyPattern.firstMatch(in: content, range: range)

    guard let eMatch = enumMatch,
          let enumRange = Range(eMatch.range(at: 1), in: content) else {
        warnings.append("\(fileURL.lastPathComponent): no `public enum P####` found, skipped")
        continue
    }

    guard let dMatch = difficultyMatch,
          let diffRange = Range(dMatch.range(at: 1), in: content) else {
        warnings.append("\(fileURL.lastPathComponent): no **Difficulty:** found, skipped")
        continue
    }

    problems.append(Problem(
        enumName: String(content[enumRange]),
        difficulty: String(content[diffRange])
    ))
}

// MARK: - Group and sort

let grouped = Dictionary(grouping: problems, by: \.difficulty)
let order = ["Easy", "Medium", "Hard"]

// MARK: - Generate topics section

var topicsSection = "\(topicsMarker)\n"

for difficulty in order {
    guard let group = grouped[difficulty] else { continue }
    let sorted = group.sorted { $0.enumName < $1.enumName }
    topicsSection += "\n### \(difficulty) Problems\n"
    for problem in sorted {
        topicsSection += "- ``\(problem.enumName)``\n"
    }
}

// MARK: - Update LeetCode.md

let doccURL = URL(fileURLWithPath: doccFile)
let doccContent = try String(contentsOf: doccURL, encoding: .utf8)

guard let markerRange = doccContent.range(of: topicsMarker) else {
    fputs("Error: '\(topicsMarker)' not found in \(doccFile)\n", stderr)
    exit(1)
}

let preamble = doccContent[doccContent.startIndex..<markerRange.lowerBound]
let output = preamble + topicsSection

try output.write(to: doccURL, atomically: true, encoding: .utf8)

// MARK: - Summary

for warning in warnings {
    fputs("warning: \(warning)\n", stderr)
}

for difficulty in order {
    let count = grouped[difficulty]?.count ?? 0
    print("\(difficulty): \(count)")
}
print("Total: \(problems.count) problems")
print("Updated \(doccFile)")
