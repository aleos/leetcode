//
//  767.ReorganizeStringTests.swift
//  
//
//  Created by Alexander Ostrovsky on 23/8/2023.
//

import XCTest

@testable import LeetCode

/// [767. Reorganize String](https://leetcode.com/problems/reorganize-string/)
///
/// **Example 1**:
///
///     Input: s = "aab"
///     Output: "aba"
///
/// **Example 2**:
///
///     Input: s = "aaab"
///     Output: ""
///
///
/// **Constraints**:
///
/// - `1 <= s.length <= 500`
/// - `s` consists of lowercase English letters.
final class ReorganizeStringTests: XCTestCase {
    
    func testExample1() {
        XCTAssertEqual(P0767.reorganizeString("aab"), "aba")
    }
    
    func testExample2() {
        XCTAssertEqual(P0767.reorganizeString("aaab"), "")
    }
}
