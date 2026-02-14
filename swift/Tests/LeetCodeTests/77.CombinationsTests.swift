import Testing

@testable import LeetCode

/// [77. Combinations](https://leetcode.com/problems/combinations/)
@Suite("77. Combinations")
struct P0077Tests {
    
    /// ## Example 1:
    ///     Input: n = 4, k = 2
    ///     Output: [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
    ///     Explanation: There are 4 choose 2 = 6 total combinations.
    ///     Note that combinations are unordered, i.e., [1,2] and [2,1] are considered to be the same combination.
    @Test("4 choose 2 produces 6 combinations")
    func example1() {
        #expect(P0077.combine(4, 2) == [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]])
    }
    
    /// ## Example 2:
    ///     Input: n = 1, k = 1
    ///     Output: [[1]]
    ///     Explanation: There is 1 choose 1 = 1 total combination.
    @Test("1 choose 1 produces single combination")
    func example2() {
        #expect(P0077.combine(1, 1) == [[1]])
    }
}

