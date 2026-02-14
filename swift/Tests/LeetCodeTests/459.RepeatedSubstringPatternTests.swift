import Testing

@testable import LeetCode

/// [459. Repeated Substring Pattern](https://leetcode.com/problems/repeated-substring-pattern/)
@Suite("459. Repeated Substring Pattern")
struct P0459Tests {
    
    /// Example 1:
    /// - Input: `s = "abab"`
    /// - Output: `true`
    /// - Explanation: It is the substring "ab" twice.
    @Test("String is repeated substring 'ab'")
    func example1() {
        #expect(P0459.repeatedSubstringPattern("abab") == true)
    }
    
    /// Example 2:
    /// - Input: `s = "aba"`
    /// - Output: `false`
    @Test("String is not a repeated pattern")
    func example2() {
        #expect(P0459.repeatedSubstringPattern("aba") == false)
    }
    
    /// Example 3:
    /// - Input: `s = "abcabcabcabc"`
    /// - Output: `true`
    /// - Explanation: It is the substring "abc" four times or the substring "abcabc" twice.
    @Test("String is repeated substring 'abc'")
    func example3() {
        #expect(P0459.repeatedSubstringPattern("abcabcabcabc") == true)
    }
}

