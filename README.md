# LeetCode

[![Build & Test](https://github.com/aleos/leetcode/actions/workflows/main.yml/badge.svg)](https://github.com/aleos/leetcode/actions/workflows/main.yml)
[![Coverage](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/aleos/leetcode/badges/coverage.json)](https://github.com/aleos/leetcode/actions/workflows/main.yml)
[![Documentation](https://img.shields.io/badge/DocC-GitHub%20Pages-blue)](https://aleos.github.io/leetcode/documentation/leetcode/)
[![Swift 6](https://img.shields.io/badge/Swift-6-orange)](https://swift.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

A personal library of [LeetCode](https://leetcode.com) solutions in Swift 6, built with [Swift Testing](https://developer.apple.com/documentation/testing) and a test-driven workflow.

## At a Glance

Each problem lives in a self-contained enum (`P0001`, `P0017`, …) with public methods matching LeetCode's function signatures. Every solution carries full problem metadata and complexity analysis in its DocString — browsable in Xcode Quick Help and the hosted DocC site.

## Repository Structure

```text
.
├── swift/                       Swift Package root
│   ├── Package.swift
│   ├── Sources/LeetCode/        Problem namespaces (P0001, P0026, …)
│   │   └── LeetCode.docc/       Documentation catalog
│   ├── Tests/LeetCodeTests/     Swift Testing suites
│   └── _templates/              File templates and Xcode .codesnippet files
└── .github/workflows/           CI pipeline and DocC deployment
```

### Naming

Source files use the problem number and title (`17.LetterCombinations.swift`) for natural filesystem sorting. Enums use zero-padded names (`P0017`) for correct ordering in the documentation browser.

### Documentation Split

Implementation files contain the problem link, description, and complexity analysis. Test files contain constraints and example data. This keeps solution files focused strictly on logic.

## Adding a New Solution

1. **Scaffold** — use the `lcsol` and `lctest` Xcode snippets, or copy files from `swift/_templates/`
2. **Test** — fill in LeetCode's examples and constraints
3. **Solve** — implement until all tests pass
4. **Document** — add time and space complexity to the DocString

To install Xcode snippets, copy the `.codesnippet` files from `swift/_templates/` to `~/Library/Developer/Xcode/UserData/CodeSnippets`.

## Build and Test

From the `swift/` directory:

```bash
swift build
swift test
swift test --filter LetterCombinations   # by name
swift test --filter P0017                # by number
```

## CI/CD

Every push to `main` triggers a pipeline that runs tests with code coverage, generates a coverage report, and deploys updated documentation to GitHub Pages. Pull requests run the test suite only.

## Documentation

Documentation is generated with [DocC](https://www.swift.org/documentation/docc/) from source comments and published automatically.

```bash
# Preview locally
swift package --disable-sandbox preview-documentation --target LeetCode
```

In Xcode: **Product → Build Documentation**.
