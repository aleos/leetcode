/// Remove Duplicates from Sorted Array
///
/// Given an integer array `nums` sorted in non-decreasing order, remove the duplicates [in-place](https://en.wikipedia.org/wiki/In-place_algorithm) such that each unique element appears only **once**. The **relative order** of the elements should be kept the **same**.
///
/// Consider the number of unique elements of `nums` to be `k`, After removing duplicates, return the number of unique elements k.
///
/// The first `k` elements of `nums` should contain the unique numbers in sorted order. The remaining elements beyond index `k - 1` can be ignored.
///
/// Custom Judge:
///
/// The judge will test your solution with the following code:
/// ```c++
/// int[] nums = [...]; // Input array
/// int[] expectedNums = [...]; // The expected answer with correct length
/// int k = removeDuplicates(nums); // Calls your implementation
/// assert k == expectedNums.length;
/// for (int i = 0; i < k; i++) {
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
///   - `1 <= nums.length <= 3 * 10⁴`
///   - `-100 <= nums[i] <= 100`
///   - `nums` is sorted in **non-decreasing** order.
///
/// - SeeAlso: [26. Remove Duplicates from Sorted Array](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)
public enum P0026 {
    
    /// - Complexity:
    ///   **Time**: O(*n*), where *n* is the length of the array,\
    ///   **Space**: O(1).
    public static func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        var i = 1
        var j = 1
        var lastValue = nums[0]
        while j < nums.count {
            if nums[j] != lastValue {
                nums[i] = nums[j]
                lastValue = nums[i]
                i += 1
            }
            j += 1
        }
        return i
    }
}
