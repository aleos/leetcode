//
//  137.SingleNumberII.swift
//  
//
//  Created by Alexander Ostrovsky on 4/7/2023.
//

import Foundation

/// Single Number II
///
/// Given an integer array `nums` where every element appears three times except for one, which appears **exactly once**. *Find the single element and return it.*
///
/// You must implement a solution with a linear runtime complexity and use only constant extra space.
///
/// **Difficulty:** Medium
///
/// **Topics:** Array, Bit Manipulation
///
/// - SeeAlso: [137. Single Number II](https://leetcode.com/problems/single-number-ii/)
public enum P0137 {
    
    /// - Parameter nums: An integer array where every element appears three times except for one, which appears **exactly once**.
    /// - Returns: The single element
    /// - Complexity:
    ///   **Time**: O(1),\
    ///   **Space**: O(1)
    public static func singleNumber(_ nums: [Int]) -> Int {
        var seenOnce = 0
        var seenTwice = 0
        for num in nums {
            seenOnce = (seenOnce ^ num) & ~seenTwice
            seenTwice = (seenTwice ^ num) & ~seenOnce
        }
        
        return seenOnce
    }
}

