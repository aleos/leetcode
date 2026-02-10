//
//  767.ReorganizeStringTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 23/8/2023.
//

import Testing

@testable import LeetCode

/// [767. Reorganize String](https://leetcode.com/problems/reorganize-string/)
///
/// **Constraints**:
///
/// - `1 <= s.length <= 500`
/// - `s` consists of lowercase English letters.
@Suite("Reorganize String")
struct ReorganizeStringTests {
    
    /// **Example 1**:
    ///
    ///     Input: s = "aab"
    ///     Output: "aba"
    @Test("Reorganize string with possible solution")
    func example1() {
        #expect(P0767.reorganizeString("aab") == "aba")
    }
    
    /// **Example 2**:
    ///
    ///     Input: s = "aaab"
    ///     Output: ""
    @Test("Impossible to reorganize returns empty string")
    func example2() {
        #expect(P0767.reorganizeString("aaab") == "")
    }
}
