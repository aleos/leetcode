//
//  137.SingleNumberII.swift
//  
//
//  Created by Alexander Ostrovsky on 4/7/2023.
//

import Foundation

/// [137. Single Number II](https://leetcode.com/problems/single-number-ii/)
class SingleNumberII {
    
    /// Given an integer array `nums` where every element appears three times except for one, which appears **exactly once**. *Find the single element and return it.*
    ///
    /// You must implement a solution with a linear runtime complexity and use only constant extra space.
    /// 
    /// - Complexity: You must implement a solution with a linear runtime complexity and use only constant extra space.
    /// - Parameter nums: An integer array where every element appears three times except for one, which appears **exactly once**.
    /// - Returns: The single element
    func singleNumber(_ nums: [Int]) -> Int {
        var seenOnce = 0
        var seenTwice = 0
        for num in nums {
            seenOnce = (seenOnce ^ num) & ~seenTwice
            seenTwice = (seenTwice ^ num) & ~seenOnce
        }
        
        return seenOnce
    }
}

