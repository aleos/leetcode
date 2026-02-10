# LeetCode

A library of algorithm solutions in Swift, sourced from [LeetCode](https://leetcode.com) problems.
Built as a Swift Package with Swift Testing.

## Repository Structure

```
├── Package.swift
├── Sources/
│   └── LeetCode/          # Solution files: 1TwoSum.swift, 2AddTwoNumbers.swift, ...
├── Tests/
│   └── LeetCodeTests/     # Test files: 1TwoSumTests.swift, ...
└── _templates/            # Templates for new solutions
```

Each solution file contains:
- Full problem description, constraints, difficulty, topics, and a link to the problem
- A public enum (`P1`, `P2`, ...) namespacing the solution function(s)
- DocStrings for Xcode Quick Help

Each test file contains:
- LeetCode's provided examples as individual test cases
- Additional edge-case tests where useful

## Adding a New Solution

1. Copy `_templates/0000ProblemName.swift` to `Sources/LeetCode/` and rename to `<NNNN><ProblemName>.swift`
2. Copy `_templates/0000ProblemNameTests.swift` to `Tests/LeetCodeTests/` and rename to `<NNNN><ProblemName>Tests.swift`
3. Fill in the placeholders (`<#...#>`) in both files
4. Write the tests first (TDD), then implement the solution
5. Run tests to verify

## Build and Test

```bash
# Build
swift build

# Run all tests
swift test

# Run tests for a specific problem
swift test --filter TwoSum

# Run tests for a specific problem by number
swift test --filter P1
```
