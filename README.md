# LeetCode

**[Live Documentation](https://aleos.github.io/leetcode/documentation/leetcode/)**

A library of algorithm solutions in Swift, sourced from [LeetCode](https://leetcode.com) problems. Built as a Swift Package with Swift Testing.

## Repository Structure

The repository is organized to be language-agnostic at the top level, with the Swift implementation contained in its own directory:

```text
├── swift/
│   ├── Package.swift
│   ├── Sources/
│   │   └── LeetCode/      # Solution files: 17.LetterCombinations.swift, ...
│   ├── Tests/
│   │   └── LeetCodeTests/ # Test files: 17.LetterCombinationsTests.swift, ...
│   └── _templates/        # Templates and Xcode snippets
└── .github/workflows/    # GitHub Actions for DocC deployment
```

Each solution file contains:
- Full problem description, difficulty, topics, and a link to the problem.
- A public enum (`P0001`, `P0002`, ...) namespacing the solution function(s).
- DocStrings for Xcode Quick Help (the first paragraph serves as the DocC abstract).

Each test file contains:
- Problem constraints and LeetCode's provided examples.
- Additional edge-case tests where useful.

## Adding a New Solution

1. Copy a template from `swift/_templates/` to the corresponding `Sources` or `Tests` folder.
2. Follow the naming convention: `N.ProblemName.swift` for files and `P000N` for enums.
3. Fill in the placeholders (`<#...#>`).
4. Write the tests first (TDD), then implement the solution.
5. Run tests to verify.

### Xcode Snippets
To automate this, copy the `.codesnippet` files from `swift/_templates/` to `~/Library/Developer/Xcode/UserData/CodeSnippets` and restart Xcode. Use `lcsol` and `lctest` shortcuts.

## Build and Test

Run these commands from the `swift/` directory:

```bash
# Build
swift build

# Run all tests
swift test

# Run tests for a specific problem by number
swift test --filter P0017
```

---
*Documentation is automatically generated and hosted via GitHub Actions.*
