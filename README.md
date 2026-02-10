# LeetCode

**[Live Documentation](https://aleos.github.io/leetcode/documentation/leetcode/)**

A collection of solutions for LeetCode problems. This repository serves as a personal reference for algorithms and a way to maintain technical skills.

## Repository Structure

The project is organized with a `swift/` subdirectory to keep the root clean and allow for future languages.

```text
.
├── swift/                # Swift Package root
│   ├── Package.swift     # SPM Manifest
│   ├── Sources/          # Problem namespaces (P0001, P0002, etc.)
│   ├── Tests/            # Swift Testing suites
│   └── _templates/       # Plain file templates and .codesnippet files
└── .github/workflows/    # Automation for aleos.github.io deployment
```

## Conventions

### Naming
* **Namespaces (Enums):** Problems use four-digit zero-padding (e.g., `P0017`) for correct sorting in the documentation browser.
* **Files:** Source and test files use standard numbering (e.g., `17.LetterCombinations.swift`) for natural sorting in the file system.

### Documentation Split
* **Implementation:** Contains the problem link, description, and complexity analysis. The first paragraph is used as the summary for the documentation landing page.
* **Tests:** Contain constraints and example input/output data. This keeps the implementation files focused strictly on logic.

---

## Adding a New Solution

I follow a TDD (Test-Driven Development) approach:

1.  **Scaffolding:** Use the `lcsol` and `lctest` snippets in Xcode, or copy the files from `swift/_templates/`.
2.  **Tests:** Fill in the LeetCode examples and constraints in the test suite.
3.  **Solve:** Implement the logic in the enum until all tests pass.
4.  **Complexity:** Add time and space analysis (e.g., `O(n)`) to the docstring.

### Xcode Snippets
To install or restore snippets, copy the `.codesnippet` files from `swift/_templates/` to:
`~/Library/Developer/Xcode/UserData/CodeSnippets`

---

## Build and Test

Run these commands from the `swift/` directory:

```bash
# Build the package
swift build

# Run all tests
swift test

# Run tests for a specific problem (e.g., P0017)
swift test --filter P0017
```

## Automation

Documentation is automatically rebuilt and deployed to **aleos.github.io** whenever changes are pushed to `main`. This is handled by a GitHub Action using the `macos-26` runner.
