//
//  209.MinimumSizeSubarraySum.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 6/7/2023.
//

import Foundation

/// Minimum Size Subarray Sum
///
/// Given an array of positive integers `nums` and a positive integer `target`, return the minimal length of a subarray whose sum is greater than or equal to `target`. If there is no such subarray, return `0` instead.
///
/// **Difficulty:** Medium
///
/// **Topics:** Array, Binary Search, Sliding Window, Prefix Sum
///
/// - SeeAlso: [209. Minimum Size Subarray Sum](https://leetcode.com/problems/minimum-size-subarray-sum/)
public enum P0209 {
    
    /// - Parameters:
    ///   - target: A positive integer.
    ///   - nums: An array of positive integers.
    /// - Returns: The minimal length of a subarray whose sum is greater than or equal to target. If there is no such subarray, returns `0` instead.
    ///     /// - Complexity:
    ///   **Time**: O(*<#...#>*), where *<#n#>* is <#...#> ,\
    ///   **Space**: O(*<#...#>*), where *<#n#>* is <#...#>.
    public static func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var start = 0
        var currentSum = 0
        var minLength: Int = .max
        
        for (i, num) in nums.enumerated() {
            currentSum += num
            
            while currentSum >= target {
                // Found
                minLength = min(minLength, i - start + 1)
                currentSum -= nums[start]
                start += 1
            }
        }
        
        return minLength == .max ? 0 : minLength
    }
}
