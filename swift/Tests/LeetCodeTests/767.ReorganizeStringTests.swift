import Testing

@testable import LeetCode

/// [767. Reorganize String](https://leetcode.com/problems/reorganize-string/)
@Suite("767. Reorganize String")
struct P0767Tests {
    
    /// ## Example 1:
    ///     Input: s = "aab"
    ///     Output: "aba"
    @Test("Reorganize string with possible solution")
    func example1() {
        #expect(P0767.reorganizeString("aab") == "aba")
    }
    
    /// ## Example 2:
    ///     Input: s = "aaab"
    ///     Output: ""
    @Test("Impossible to reorganize returns empty string")
    func example2() {
        #expect(P0767.reorganizeString("aaab") == "")
    }
}

