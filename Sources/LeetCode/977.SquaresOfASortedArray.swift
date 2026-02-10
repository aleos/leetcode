//
//  977.SquaresOfASortedArray.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import Foundation

/// Squares of a Sorted Array
///
/// Given an integer array `nums` sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.
///
/// **Difficulty:** Easy
///
/// **Topics:** Junior, Array, Two Pointers, Sorting, Weekly Contest 120
///
/// - SeeAlso: [977. Squares of a Sorted Array](https://leetcode.com/problems/squares-of-a-sorted-array/)
public enum P0977 {
    
    /// - Parameter nums: An integer array sorted in non-decreasing order.
    /// - Returns: An array of the squares of each number sorted in non-decreasing order.
    /// - Complexity:
    ///   **Time**: O(*n*), where *n* is the length of the input array,\
    ///   **Space**: O(*1*).
    public static func sortedSquares(_ nums: [Int]) -> [Int] {
        var result = [Int](repeating: 0, count: nums.count)
        var left = 0
        var right = nums.count - 1
        for i in (0..<nums.count).reversed() {
            let numToSquare: Int
            if abs(nums[left]) > abs(nums[right]) {
                numToSquare = nums[left]
                left += 1
            } else {
                numToSquare = nums[right]
                right -= 1
            }
            result[i] = numToSquare * numToSquare
        }
        return result
    }
}
