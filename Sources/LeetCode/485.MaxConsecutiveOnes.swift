//
//  485.MaxConsecutiveOnes.swift
//
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import Foundation

/// Max Consecutive Ones
///
/// Given a binary array `nums`, return the maximum number of consecutive `1`'s in the array.
///
/// **Difficulty:** Easy
///
/// **Topics:** Mid Level, Array
///
/// - SeeAlso: [485. Max Consecutive Ones](https://leetcode.com/problems/max-consecutive-ones/)
public enum P0485 {
    
    /// - Parameter nums: A binary array.
    /// - Returns: The maximum number of consecutive `1`'s in the array.
    /// - Complexity:
    ///   **Time**: O(*<#...#>*), where *<#n#>* is <#...#> ,\
    ///   **Space**: O(*<#...#>*), where *<#n#>* is <#...#>.
    public static func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maximumNumberOfConsecutive1s = 0
        var currentNumberOfConsecutive1s = 0
        for num in nums {
            if num == 1 {
                currentNumberOfConsecutive1s += 1
            } else {
                maximumNumberOfConsecutive1s = max(maximumNumberOfConsecutive1s, currentNumberOfConsecutive1s)
                currentNumberOfConsecutive1s = 0
            }
        }
        return max(maximumNumberOfConsecutive1s, currentNumberOfConsecutive1s)
    }
}
