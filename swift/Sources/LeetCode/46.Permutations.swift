/// Permutations
///
/// Given an array nums of distinct integers, return all the possible permutations. You can return the answer in any order.
///
/// **Difficulty:** Medium
///
/// **Topics:** Array, Backtracking
///
/// - SeeAlso: [46. Permutations](https://leetcode.com/problems/permutations/)
public enum P0046 {
    
    /// - Parameters:
    ///   - nums: Distinct integers.
    /// - Returns: All the possible permutations.
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

