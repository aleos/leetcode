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
/// **Example 1**:
///
///     Input: digits = "23"
///     Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]
///
/// **Example 2**:
///
///     Input: digits = ""
///     Output: []
///
/// **Example 3**:
///
///     Input: digits = "2"
///     Output: ["a","b","c"]
///
///
/// **Constraints**:
///
/// - `0 <= digits.length <= 4`
/// - `digits[i]` is a digit in the range `['2', '9']`.
final class LetterCombinationsOfAPhoneNumberTests: XCTestCase {
    
    func testExample1() throws {
        XCTAssertEqual(P0017.letterCombinations("23"), ["ad","ae","af","bd","be","bf","cd","ce","cf"])
    }
    
    func testExample2() throws {
        XCTAssertEqual(P0017.letterCombinations(""), [])
    }

    func testExample3() throws {
        XCTAssertEqual(P0017.letterCombinations("2"), ["a","b","c"])
    }
}
