/// Merge Sorted Array
///
/// You are given two integer arrays `nums1` and `nums2`, sorted in non-decreasing order, and two integers `m` and `n`, representing the number of elements in `nums1` and `nums2` respectively.
///
/// Merge `nums1` and `nums2` into a single array sorted in non-decreasing order.
///
/// The final sorted array should not be returned by the function, but instead be stored inside the array `nums1`. To accommodate this, `nums1` has a length of `m + n`, where the first `m` elements denote the elements that should be merged, and the last `n` elements are set to `0` and should be ignored. `nums2` has a length of `n`.
///
/// **Difficulty:** Easy
///
/// **Topics:** Array, Two Pointers, Sorting
///
/// - SeeAlso: [88. Merge Sorted Array](https://leetcode.com/problems/merge-sorted-array/)
public enum P0088 {
    
    /// - Parameters:
    ///   - nums1: An integer array.
    ///   - m: The number of elements in `nums1`.
    ///   - nums2: An integer array.
    ///   - n: The number of elements in `nums2`.
    /// - Complexity:
    ///   **Time**: O(*m* + *n*), where *m* and *n* are the number of elements in nums1 and nums2,\
    ///   **Space**: O(1).
    public static func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var mIndex = m - 1
        var nIndex = n - 1
        for i in (0..<m + n).reversed() {
            if nIndex < 0 || mIndex >= 0 && nums1[mIndex] > nums2[nIndex] {
                nums1[i] = nums1[mIndex]
                mIndex -= 1
            } else {
                nums1[i] = nums2[nIndex]
                nIndex -= 1
            }
        }
    }
}

