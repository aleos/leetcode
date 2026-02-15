import Testing

@testable import LeetCode

/// [46. Permutations](https://leetcode.com/problems/permutations/)
@Suite("46. Permutations")
struct P0046Tests {
    
    /// Example 1:
    /// - Input: `nums = [1,2,3]`
    /// - Output: `[[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]`
    @Test("Permutations of [1,2,3]")
    func example1() {
        #expect(Set(P0046.permute([1,2,3])) == Set([[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]))
    }
    
    /// Example 2:
    /// - Input: `nums = [0,1]`
    /// - Output: `[[0,1],[1,0]]`
    @Test("Two elements")
    func example2() {
        #expect(Set(P0046.permute([0,1])) == Set([[0,1],[1,0]]))
    }
    
    /// Example 3:
    /// - Input: `nums = [1]`
    /// - Output: `[[1]]`
    @Test("Single element")
    func example3() {
        #expect(P0046.permute([1]) == [[1]])
    }
}

