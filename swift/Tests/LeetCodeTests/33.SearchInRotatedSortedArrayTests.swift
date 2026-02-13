import Testing

@testable import LeetCode

/// [33. Search in Rotated Sorted Array](https://leetcode.com/problems/search-in-rotated-sorted-array/)
///
/// ## Constraints:
/// - `1 <= nums.length <= 5000`
/// - `-104 <= nums[i] <= 104`
/// - All values of `nums` are unique.
/// - `nums` is an ascending array that is possibly rotated.
/// - `-104 <= target <= 104`
@Suite("33. Search in Rotated Sorted Array")
struct P0033Tests {
    
    /// ## Example 1:
    ///     Input: nums = [4,5,6,7,0,1,2], target = 0
    ///     Output: 4
    @Test("Find target 0 in rotated array")
    func example1() {
        #expect(P0033.search([4,5,6,7,0,1,2], 0) == 4)
    }
    
    /// ## Example 2:
    ///     Input: nums = [4,5,6,7,0,1,2], target = 3
    ///     Output: -1
    @Test("Target not found returns -1")
    func example2() {
        #expect(P0033.search([4,5,6,7,0,1,2], 3) == -1)
    }
    
    /// ## Example 3:
    ///     Input: nums = [1], target = 0
    ///     Output: -1
    @Test("Single element array, target not found")
    func example3() {
        #expect(P0033.search([1], 0) == -1)
    }
    
    @Test("Additional test cases")
    func additionalCases() {
        #expect(P0033.search([4,5,6,7,0,1,2], 1) == 5)
        #expect(P0033.search([4,5,6,7,8,1,2,3], 8) == 4)
        #expect(P0033.search([5,1,2,3,4], 1) == 1)
    }
}

