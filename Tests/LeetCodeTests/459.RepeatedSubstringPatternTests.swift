//
//  459.RepeatedSubstringPatternTests.swift
//  
//
//  Created by Alexander Ostrovsky on 21/8/2023.
//

import XCTest

@testable import LeetCode

/// [459. Repeated Substring Pattern](https://leetcode.com/problems/repeated-substring-pattern/)
///
/// **Example 1**:
///
///     Input: s = "abab"
///     Output: true
///     Explanation: It is the substring "ab" twice.
///
/// **Example 2**:
///
///     Input: s = "aba"
///     Output: false
///
/// **Example 3**:
///
///     Input: s = "abcabcabcabc"
///     Output: true
///     Explanation: It is the substring "abc" four times or the substring "abcabc" twice.
///
///
/// **Constraints**:
///
/// - `1 <= s.length <= 104`
/// - `s` consists of lowercase English letters.
final class RepeatedSubstringPatternTests: XCTestCase {
    
    func testExample1() {
        XCTAssertEqual(P0459.repeatedSubstringPattern("abab"), true)
    }
    
    func testExample2() {
        XCTAssertEqual(P0459.repeatedSubstringPattern("aba"), false)
    }
    
    func testExample3() {
        XCTAssertEqual(P0459.repeatedSubstringPattern("abcabcabcabc"), true)
    }
}
