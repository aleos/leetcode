//
//  46.Permutations.swift
//  
//
//  Created by Alexander Ostrovsky on 2/8/2023.
//

import Foundation

/// [46. Permutations](https://leetcode.com/problems/permutations/)
///
/// Given an array nums of distinct integers, return all the possible permutations. You can return the answer in any order.
class Permutations {
    /// - Parameters:
    ///   - nums: Distinct integers.
    /// - Returns: All the possible permutations.
    func permute(_ nums: [Int]) -> [[Int]] {
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
