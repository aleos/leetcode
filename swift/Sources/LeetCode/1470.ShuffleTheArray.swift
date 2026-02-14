/// Shuffle the Array
///
/// Given the array `nums` consisting of `2n` elements in the form `[x1,x2,...,xn,y1,y2,...,yn]`.
///
/// Return the array in the form `[x1,y1,x2,y2,...,xn,yn]`.
///
/// **Difficulty:** Easy
///
/// **Topics:** Array, Two Pointers, Simulation
///
/// - Precondition:
///   - `1 <= n <= 500`
///   - `nums.length == 2n`
///   - `1 <= nums[i] <= 10^3`
///
/// - SeeAlso: [1470. Shuffle the Array](https://leetcode.com/problems/shuffle-the-array/)
public enum P1470 {
    /// - Complexity:
    ///   **Time**: O(n), where n is the half-length of the input array (nums.count / 2),\
    ///   **Space**: O(1) additional (excluding the output array).
    public static func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var shuffled = nums
        for i in 0..<n {
            shuffled[i * 2] = nums[i]
            shuffled[i * 2 + 1] = nums[i + n]
        }
        return shuffled
    }
}
