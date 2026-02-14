/// Concatenation of Array
///
/// Given an integer array `nums` of length `n`, you want to create an array `ans` of length `2n`
/// where `ans[i] == nums[i]` and `ans[i + n] == nums[i]` for `0 <= i < n`.
///
/// **Difficulty:** Easy
///
/// **Topics:** Mid Level, Array, Simulation, Weekly Contest 249
///
/// - Precondition:
///   - `n == nums.length`
///   - `1 <= n <= 1000`
///   - `1 <= nums[i] <= 1000`
///
/// - SeeAlso: [1929. Concatenation of Array](https://leetcode.com/problems/concatenation-of-array/)
public enum P1929 {
    /// - Complexity:
    ///   **Time**: O(*n*), where *n* is the length of the array,\
    ///   **Space**: O(*n*), where *n* is the length of the array.
    public static func getConcatenation(_ nums: [Int]) -> [Int] {
        nums + nums
    }
}
