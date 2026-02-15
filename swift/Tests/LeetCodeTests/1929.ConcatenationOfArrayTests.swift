import Testing

@testable import LeetCode

/// [Q1. Concatenation of Array](https://leetcode.com/problems/concatenation-of-array/)
@Suite("1929. Concatenation of Array")
struct P1929Tests {

    /// Example 1:
    /// - Input: `nums = [1,2,1]`
    /// - Output: `[1,2,1,1,2,1]`
    /// - Explanation: The array ans is formed as follows:
    ///   - ans = [nums[0],nums[1],nums[2],nums[0],nums[1],nums[2]]
    ///   - ans = [1,2,1,1,2,1]
    @Test("nums = [1,2,1]")
    func example1() {
        #expect(P1929.getConcatenation([1, 2, 1]) == [1, 2, 1, 1, 2, 1])
    }

    /// Example 2:
    /// - Input: `nums = [1,3,2,1]`
    /// - Output: `[1,3,2,1,1,3,2,1]`
    /// - Explanation: Concatenate the array with itself.
    @Test("nums = [1,3,2,1]")
    func example2() {
        #expect(P1929.getConcatenation([1, 3, 2, 1]) == [1, 3, 2, 1, 1, 3, 2, 1])
    }
}
