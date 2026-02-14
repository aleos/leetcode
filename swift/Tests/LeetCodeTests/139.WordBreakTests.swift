import Testing

@testable import LeetCode

/// [139. Word Break](https://leetcode.com/problems/word-break/)
@Suite("139. Word Break")
struct P0139Tests {
    
    /// ## Example 1:
    ///     Input: s = "leetcode", wordDict = ["leet","code"]
    ///     Output: true
    ///     Explanation: Return true because "leetcode" can be segmented as "leet code".
    @Test("String can be segmented with dictionary words")
    func example1() {
        #expect(P0139.wordBreak("leetcode", ["leet","code"]) == true)
    }
    
    /// ## Example 2:
    ///     Input: s = "applepenapple", wordDict = ["apple","pen"]
    ///     Output: true
    ///     Explanation: Return true because "applepenapple" can be segmented as "apple pen apple".
    ///     Note that you are allowed to reuse a dictionary word.
    @Test("Dictionary words can be reused")
    func example2() {
        #expect(P0139.wordBreak("applepenapple", ["apple","pen"]) == true)
    }

    /// ## Example 3:
    ///     Input: s = "catsandog", wordDict = ["cats","dog","sand","and","cat"]
    ///     Output: false
    @Test("String cannot be segmented")
    func example3() {
        #expect(P0139.wordBreak("catsandog", ["cats","dog","sand","and","cat"]) == false)
    }
    
    @Test("Long string with insufficient dictionary")
    func longStringTest() {
        #expect(P0139.wordBreak("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab", ["a","aa","aaa","aaaa","aaaaa","aaaaaa","aaaaaaa","aaaaaaaa","aaaaaaaaa","aaaaaaaaaa"]) == false)
    }
    
    /// Edge case: empty string should be segmentable (by definition)
    @Test("Empty string returns true")
    func emptyStringReturnsTrue() {
        #expect(P0139.wordBreak("", ["a","b"]) == true)
    }
}

