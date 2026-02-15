/// Single Number
///
/// Given a **non-empty** array of integers `nums`, every element appears twice except for one. Find that single one.
///
/// You must implement a solution with a linear runtime complexity and use only constant extra space.
///
/// **Difficulty:** Easy
///
/// **Topics:** Array, Bit Manipulation
///
/// - Precondition:
///   - `1 <= nums.length <= 3 * 10⁴`
///   - `-3 * 10⁴ <= nums[i] <= 3 * 10⁴`
///   - Each element in the array appears twice except for one element which appears only once.
///
/// - SeeAlso: [136. Single Number](https://leetcode.com/problems/single-number/)
public enum P0136 {
    
    /// - Complexity:
    ///   **Time**: O(*n*), where *n* is the length of the array,\
    ///   **Space**: O(1).
    public static func singleNumber(_ nums: [Int]) -> Int {
        var single = 0
        for num in nums {
            single ^= num
        }
        return single
    }
}
