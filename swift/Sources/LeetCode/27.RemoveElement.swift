/// Remove Element
///
/// Given an integer array `nums` and an integer `val`, remove all occurrences of `val` in `nums` [in-place](https://en.wikipedia.org/wiki/In-place_algorithm). The order of the elements may be changed. Then return *the number of elements* in `nums` *which are not equal to* `val`.
///
/// Consider the number of elements in `nums` which are not equal to `val` be `k`, to get accepted, you need to do the following things:
/// - Change the array `nums` such that the first `k` elements of `nums` contain the elements which are not equal to `val`. The remaining elements of `nums` are not important as well as the size of `nums`.
/// - Return `k`.
///
/// ## Custom Judge:
///
/// The judge will test your solution with the following code:
///
///
/// ```c++
/// int[] nums = [...]; // Input array
/// int val = ...; // Value to remove
/// int[] expectedNums = [...]; // The expected answer with correct length.
///                             // It is sorted with no values equaling val.
///
/// int k = removeElement(nums, val); // Calls your implementation
///
/// assert k == expectedNums.length;
/// sort(nums, 0, k); // Sort the first k elements of nums
/// for (int i = 0; i < actualLength; i++) {
///     assert nums[i] == expectedNums[i];
/// }
/// ```
///
/// If all assertions pass, then your solution will be **accepted**.
///
/// **Difficulty:** Easy
///
/// **Topics:** Array, Two Pointers
///
/// - Precondition:
///   - `0 <= nums.length <= 100`
///   - `0 <= nums[i] <= 50`
///   - `0 <= val <= 100`
///
/// - SeeAlso: [27. Remove Element](https://leetcode.com/problems/remove-element/)
public enum P0027 {
    
    /// - Complexity:
    ///   **Time**: O(*n*), where *n* is the length of the array,\
    ///   **Space**: O(1).
    public static func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var rightIndex = nums.count - 1
        var leftIndex = 0
        while leftIndex <= rightIndex {
            if nums[leftIndex] == val { // move to end with shift
                nums[leftIndex] = nums[rightIndex]
                rightIndex -= 1
            } else {
                leftIndex += 1
            }
        }
        return rightIndex + 1
    }
}
