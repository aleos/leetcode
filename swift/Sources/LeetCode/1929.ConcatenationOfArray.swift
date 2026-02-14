/// Concatenation of Array
///
/// **Difficulty:** Easy
///
/// **Topics:** Mid Level, Array, Simulation, Weekly Contest 249
///
/// - Precondition:
///   - `n == nums.length`
///   - `1 <= n <= 1000`
///   - `1 <= nums[i] <= 1000
///
/// - SeeAlso: [Q1. Concatenation of Array](https://leetcode.com/problems/concatenation-of-array/)
public enum P1929 {
    /// - Complexity:
    ///   **Time**: O(*n*), where *n* is nums ,\
    ///   **Space**: O(*n*), where *n* is nums.
    public static func getConcatenation(_ nums: [Int]) -> [Int] {
        nums + nums
    }
}
