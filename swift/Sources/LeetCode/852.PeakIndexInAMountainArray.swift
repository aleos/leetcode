/// Peak Index in a Mountain Array
///
/// You are given an integer mountain array `arr` of length `n` where the values increase to a **peak element** and then decrease.
///
/// Return the index of the peak element.
///
/// Your task is to solve it in `O(log(n))` time complexity.
///
/// **Difficulty:** Medium
///
/// **Topics:** Junior, Array, Binary Search, Weekly Contest 89
///
/// - Precondition:
///   - `3 <= arr.length <= 10⁵`
///   - `0 <= arr[i] <= 10⁶`
///   - `arr` is **guaranteed** to be a mountain array.
///
/// - SeeAlso: [852. Peak Index in a Mountain Array](https://leetcode.com/problems/peak-index-in-a-mountain-array/)
public enum P0852 {
    
    /// - Complexity:
    ///   **Time**: O(log *n*), where *n* is the length of the array,\
    ///   **Space**: O(1).
    public static func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        var left = 0
        var right = arr.count - 1
        var mid: Int
        
        while left < right {
            mid = (left + right) / 2
            if arr[mid] < arr[mid + 1] {
                left = mid + 1
            } else {
                right = mid
            }
        }
        return left
    }
}
