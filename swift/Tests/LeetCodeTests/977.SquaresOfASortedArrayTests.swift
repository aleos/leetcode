import Testing

@testable import LeetCode

/// [977. Squares of a Sorted Array](https://leetcode.com/problems/squares-of-a-sorted-array/)
@Suite("977. Squares of a Sorted Array")
struct P0977Tests {
    
    /// ## Example 1:
    ///     Input: nums = [-4,-1,0,3,10]
    ///     Output: [0,1,9,16,100]
    ///     Explanation: After squaring, the array becomes [16,1,0,9,100].
    ///     After sorting, it becomes [0,1,9,16,100].
    ///
    @Test("Array with negative and positive numbers")
    func example1() {
        #expect(P0977.sortedSquares([-4,-1,0,3,10]) == [0,1,9,16,100])
    }
    
    /// ## Example 2:
    ///     Input: nums = [-7,-3,2,3,11]
    ///     Output: [4,9,9,49,121]
    @Test("Array produces duplicate squares")
    func example2() {
        #expect(P0977.sortedSquares([-7,-3,2,3,11]) == [4,9,9,49,121])
    }
}

