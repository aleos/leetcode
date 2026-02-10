//
//  17.LetterCombinationsOfAPhoneNumberTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import Testing

@testable import LeetCode

/// [17. Letter Combinations of a Phone Number](https://leetcode.com/problems/letter-combinations-of-a-phone-number/)
///
/// ## Constraints:
/// - `0 <= digits.length <= 4`
/// - `digits[i]` is a digit in the range `['2', '9']`.
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
}

