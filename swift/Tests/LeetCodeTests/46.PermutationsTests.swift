//
//  46.PermutationsTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 2/8/2023.
//

import Testing

@testable import LeetCode

/// [46. Permutations](https://leetcode.com/problems/permutations/)
///
/// ## Constraints:
/// - `1 <= nums.length <= 6`
/// - `-10 <= nums[i] <= 10`
/// - All the integers of `nums` are unique
@Suite("46. Permutations")
struct P0046Tests {
    
    /// ## Example 1:
    ///     Input: nums = [1,2,3]
    ///     Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
    @Test("Generate all permutations of [1,2,3]")
    func example1() {
        #expect(Set(P0046.permute([1,2,3])) == Set([[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]))
    }
    
    /// ## Example 2:
    ///     Input: nums = [0,1]
    ///     Output: [[0,1],[1,0]]
    @Test("Generate permutations of two elements")
    func example2() {
        #expect(Set(P0046.permute([0,1])) == Set([[0,1],[1,0]]))
    }
    
    /// ## Example 3:
    ///     Input: nums = [1]
    ///     Output: [[1]]
    @Test("Single element array")
    func example3() {
        #expect(P0046.permute([1]) == [[1]])
    }
}

