import Testing

@testable import LeetCode

/// [209. Minimum Size Subarray Sum](https://leetcode.com/problems/minimum-size-subarray-sum/)
///
/// ## Constraints:
/// - `1 <= target <= 109`
/// - `1 <= nums.length <= 105`
/// - `1 <= nums[i] <= 104`
@Suite("209. Minimum Size Subarray Sum")
struct P0209Tests {
    
    /// ## Example 1:
    ///     Input: target = 7, nums = [2,3,1,2,4,3]
    ///     Output: 2
    ///     Explanation: The subarray [4,3] has the minimal length under the problem constraint.
    @Test("Find minimal subarray with sum >= target")
    func example1() {
        #expect(P0209.minSubArrayLen(7, [2,3,1,2,4,3]) == 2)
    }
    
    /// ## Example 2:
    ///     Input: target = 4, nums = [1,4,4]
    ///     Output: 1
    @Test("Single element meets target")
    func example2() {
        #expect(P0209.minSubArrayLen(4, [1,4,4]) == 1)
    }
    
    /// ## Example 3:
    ///     Input: target = 11, nums = [1,1,1,1,1,1,1,1]
    ///     Output: 0
    @Test("No subarray can meet target")
    func example3() {
        #expect(P0209.minSubArrayLen(11, [1,1,1,1,1,1,1,1]) == 0)
    }
}

