import Testing

@testable import LeetCode

/// [17. Letter Combinations of a Phone Number](https://leetcode.com/problems/letter-combinations-of-a-phone-number/)
@Suite("17. Letter Combinations of a Phone Number")
struct P0017Tests {
    
    /// ## Example 1:
    ///     Input: digits = "23"
    ///     Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]
    @Test("Digits '23' produces 9 combinations")
    func example1() {
        #expect(P0017.letterCombinations("23") == ["ad","ae","af","bd","be","bf","cd","ce","cf"])
    }
    
    /// ## Example 2:
    ///     Input: digits = ""
    ///     Output: []
    @Test("Empty input produces empty output")
    func example2() {
        #expect(P0017.letterCombinations("") == [])
    }

    /// ## Example 3:
    ///     Input: digits = "2"
    ///     Output: ["a","b","c"]
    @Test("Single digit '2' produces 3 combinations")
    func example3() {
        #expect(P0017.letterCombinations("2") == ["a","b","c"])
    }

    /// Intentionally invalid input to exercise first-digit fallback (?? [])
    @Test("Unmapped first digit '1' returns empty array")
    func invalidFirstDigit1() {
        #expect(P0017.letterCombinations("1") == [])
    }
    /// Valid first digit followed by unmapped digit to exercise loop fallback (?? [])
    @Test("Digits '21' exercise loop fallback and return empty array")
    func validThenInvalidDigit21() {
        // Seeds from '2' => ["a","b","c"], then '1' has no mapping => combinations collapse to []
        #expect(P0017.letterCombinations("21") == [])
    }
}

