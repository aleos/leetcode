import Testing

@testable import LeetCode

/// [81. Search in Rotated Sorted Array II](https://leetcode.com/problems/search-in-rotated-sorted-array-ii/)
///
/// ## Constraints:
/// - `1 <= nums.length <= 5000`
/// - `-104 <= nums[i] <= 104`
/// - `nums` is guaranteed to be rotated at some pivot.
/// - `-104 <= target <= 104`
@Suite("81. Search in Rotated Sorted Array II")
struct P0081Tests {
    
    /// ## Example 1:
    ///     Input: nums = [2,5,6,0,0,1,2], target = 0
    ///     Output: true
    @Test("Target found in rotated array with duplicates")
    func example1() {
        #expect(P0081.search([2,5,6,0,0,1,2], 0) == true)
    }
    
    /// ## Example 2:
    ///     Input: nums = [2,5,6,0,0,1,2], target = 3
    ///     Output: false
    @Test("Target not found in rotated array")
    func example2() {
        #expect(P0081.search([2,5,6,0,0,1,2], 3) == false)
    }
    
    @Test("Array with many duplicates")
    func arrayWithDuplicates() {
        #expect(P0081.search([1,0,1,1,1], 0) == true)
    }
}

