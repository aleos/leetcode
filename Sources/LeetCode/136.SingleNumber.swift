//
//  136.SingleNumber.swift
//  
//
//  Created by Alexander Ostrovsky on 4/7/2023.
//

import Foundation

/// [136. Single Number](https://leetcode.com/problems/single-number/)
class SingleNumber {
    
    /// Given a non-empty array of integers `nums`, every element appears twice except for one. Find that single one.
    ///
    /// You must implement a solution with a linear runtime complexity and use only constant extra space.
    /// 
    /// - Complexity: You must implement a solution with a linear runtime complexity and use only constant extra space.
    /// - Parameter nums: A non-empty array of integers. Every element appears twice except for one.
    /// - Returns: Find the single one.
    func singleNumber(_ nums: [Int]) -> Int {
        var single = 0
        for num in nums {
            single ^= num
        }
        return single
    }
}
