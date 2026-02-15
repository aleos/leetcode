/// Permutations
///
/// Given an array `nums` of distinct integers, return all the possible permutations. You can return the answer in **any order**.
///
/// **Difficulty:** Medium
///
/// **Topics:** Array, Backtracking
///
/// - Precondition:
///   - `1 <= nums.length <= 6`
///   - `-10 <= nums[i] <= 10`
///   - All the integers of `nums` are **unique**.
///
/// - SeeAlso: [46. Permutations](https://leetcode.com/problems/permutations/)
public enum P0046 {
    
    /// - Complexity:
    ///   **Time**: O(*n!*), where *n* is the number of integers,\
    ///   **Space**: O(*n*), where *n* is the number of integers.
    public static func permute(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 1 else { return [nums] }
        guard nums.count != 2 else { return [nums, [nums[1], nums[0]]] }
        var permutations = [[Int]]()
        for permutation in permute(Array(nums.dropFirst())) {
            for i in 0...permutation.count {
                permutations.append(Array(permutation[0..<i] + [nums[0]] + permutation[i..<permutation.count]))
            }
        }
        return permutations
    }
}
