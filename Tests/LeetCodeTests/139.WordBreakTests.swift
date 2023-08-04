//
//  139.WordBreakTests.swift
//  
//
//  Created by Alexander Ostrovsky on 4/8/2023.
//

import XCTest

@testable import LeetCode

/// [139. Word Break](https://leetcode.com/problems/word-break/)
///
/// **Example 1**:
///
///     Input: s = "leetcode", wordDict = ["leet","code"]
///     Output: true
///     Explanation: Return true because "leetcode" can be segmented as "leet code".
///
/// **Example 2**:
///
///     Input: s = "applepenapple", wordDict = ["apple","pen"]
///     Output: true
///     Explanation: Return true because "applepenapple" can be segmented as "apple pen apple".
///     Note that you are allowed to reuse a dictionary word.
///
/// **Example 3**:
///
///     Input: s = "catsandog", wordDict = ["cats","dog","sand","and","cat"]
///     Output: false
///
///
/// **Constraints**:
///
/// - `1 <= s.length <= 300`
/// - `1 <= wordDict.length <= 1000`
/// - `1 <= wordDict[i].length <= 20`
/// - `s` and `wordDict[i]` consist of only lowercase English letters.
/// - All the strings of `wordDict` are unique.
final class WordBreakTests: XCTestCase {
    
    let solution = WordBreak()
    
    func testExample1() {
        XCTAssertEqual(solution.wordBreak("leetcode", ["leet","code"]), true)
    }
    
    func testExample2() {
        XCTAssertEqual(solution.wordBreak("applepenapple", ["apple","pen"]), true)
    }

    func testExample3() {
        XCTAssertEqual(solution.wordBreak("catsandog", ["cats","dog","sand","and","cat"]), false)
    }
    
    func testExample() {
        XCTAssertEqual(solution.wordBreak("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab", ["a","aa","aaa","aaaa","aaaaa","aaaaaa","aaaaaaa","aaaaaaaa","aaaaaaaaa","aaaaaaaaaa"]), false)
    }

}
