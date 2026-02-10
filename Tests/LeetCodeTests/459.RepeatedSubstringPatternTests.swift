//
//  459.RepeatedSubstringPatternTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 21/8/2023.
//

import XCTest

@testable import LeetCode

/// [459. Repeated Substring Pattern](https://leetcode.com/problems/repeated-substring-pattern/)
///
/// **Constraints**:
///
/// - `1 <= s.length <= 104`
/// - `s` consists of lowercase English letters.
final class RepeatedSubstringPatternTests: XCTestCase {
    
    /// **Example 1**:
    ///
    ///     Input: s = "abab"
    ///     Output: true
    ///     Explanation: It is the substring "ab" twice.
    func testExample1() {
        XCTAssertEqual(P0459.repeatedSubstringPattern("abab"), true)
    }
    
    /// **Example 2**:
    ///
    ///     Input: s = "aba"
    ///     Output: false
    func testExample2() {
        XCTAssertEqual(P0459.repeatedSubstringPattern("aba"), false)
    }
    
    /// **Example 3**:
    ///
    ///     Input: s = "abcabcabcabc"
    ///     Output: true
    ///     Explanation: It is the substring "abc" four times or the substring "abcabc" twice.
    func testExample3() {
        XCTAssertEqual(P0459.repeatedSubstringPattern("abcabcabcabc"), true)
    }
}
