import Testing

@testable import LeetCode

/// [27. Remove Element](https://leetcode.com/problems/remove-element/)
@Suite("27. Remove Element")
struct P0027Tests {
    
    /// Example 1:
    /// - Input: `nums = [3,2,2,3], val = 3`
    /// - Output: `2, nums = [2,2,_,_]`
    /// - Explanation: Your function should return k = 2, with the first two elements of nums being 2.
    ///   It does not matter what you leave beyond the returned k (hence they are underscores).
    @Test("Small array")
    func example1() {
        var nums = [3,2,2,3]
        #expect(P0027.removeElement(&nums, 3) == 2)
        #expect(nums[0..<2] == [2, 2])
    }
    
    /// Example 2:
    /// - Input: `nums = [0,1,2,2,3,0,4,2], val = 2`
    /// - Output: `5, nums = [0,1,4,0,3,_,_,_]`
    /// - Explanation: Your function should return k = 5, with the first five elements of nums containing 0, 0, 1, 3, and 4.
    ///   Note that the five elements can be returned in any order.
    ///   It does not matter what you leave beyond the returned k (hence they are underscores).
    @Test("Larger array")
    func example2() {
        var nums = [0,1,2,2,3,0,4,2]
        #expect(P0027.removeElement(&nums, 2) == 5)
        #expect(nums[0..<5] == [0,1,4,0,3])
    }
}

