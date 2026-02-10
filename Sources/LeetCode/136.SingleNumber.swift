//
//  136.SingleNumber.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 4/7/2023.
//

import Foundation

/// Single Number
///
/// Given a non-empty array of integers `nums`, every element appears twice except for one. Find that single one.
///
/// You must implement a solution with a linear runtime complexity and use only constant extra space.
///
/// **Difficulty:** Easy
///
/// **Topics:** Array, Bit Manipulation
///
/// - SeeAlso: [136. Single Number](https://leetcode.com/problems/single-number/)
public enum P0136 {
    
    /// - Parameter nums: A non-empty array of integers. Every element appears twice except for one.
    /// - Returns: Find the single one.
    /// - Complexity:
    ///   **Time**: O(*n*), where *n* is a non-empty array of integers,\
    ///   **Space**: O(1)
    public static func singleNumber(_ nums: [Int]) -> Int {
        var single = 0
        for num in nums {
            single ^= num
        }
        return single
    }
}
