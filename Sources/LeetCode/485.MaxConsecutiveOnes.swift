//
//  485.MaxConsecutiveOnes.swift
//  
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import Foundation

/// [485. Max Consecutive Ones](https://leetcode.com/problems/max-consecutive-ones/)
class MaxConsecutiveOnes {
    /// Given a binary array `nums`, return the maximum number of consecutive `1`'s in the array.
    /// - Parameter nums: A binary array.
    /// - Returns: The maximum number of consecutive `1`'s in the array.
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
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
