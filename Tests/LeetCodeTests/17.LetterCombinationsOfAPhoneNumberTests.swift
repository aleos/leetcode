//
//  17.LetterCombinationsOfAPhoneNumberTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import XCTest

@testable import LeetCode

/// [17. Letter Combinations of a Phone Number](https://leetcode.com/problems/letter-combinations-of-a-phone-number/)
///
/// **Constraints**:
///
/// - `0 <= digits.length <= 4`
/// - `digits[i]` is a digit in the range `['2', '9']`.
final class LetterCombinationsOfAPhoneNumberTests: XCTestCase {
    
    /// **Example 1**:
    ///
    ///     Input: digits = "23"
    ///     Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]
    func testExample1() throws {
        XCTAssertEqual(P0017.letterCombinations("23"), ["ad","ae","af","bd","be","bf","cd","ce","cf"])
    }
    
    /// **Example 2**:
    ///
    ///     Input: digits = ""
    ///     Output: []
    func testExample2() throws {
        XCTAssertEqual(P0017.letterCombinations(""), [])
    }

    /// **Example 3**:
    ///
    ///     Input: digits = "2"
    ///     Output: ["a","b","c"]
    func testExample3() throws {
        XCTAssertEqual(P0017.letterCombinations("2"), ["a","b","c"])
    }
}
