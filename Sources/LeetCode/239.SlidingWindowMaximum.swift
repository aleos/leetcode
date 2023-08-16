//
//  239.SlidingWindowMaximum.swift
//  
//
//  Created by Alexander Ostrovsky on 16/8/2023.
//

import Foundation

/// [239. Sliding Window Maximum](https://leetcode.com/problems/sliding-window-maximum/)
class SlidingWindowMaximum {
    
    /// You are given an array of integers `nums`, there is a sliding window of size `k` which is moving from the very left of the array to the very right. You can only see the `k` numbers in the window. Each time the sliding window moves right by one position.
    ///
    /// Return the max sliding window.
    ///
    /// - Parameters:
    ///   - nums: An array of integers.
    ///   - k: A size of a sliding window.
    /// - Returns: The max sliding window.
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        var windowMaxIndexes: [Int] = []
        var maxes: [Int] = []
        
        // Until whole window
        for n in 0..<k {
            // Update maxes
            while let last = windowMaxIndexes.last, nums[last] <= nums[n] {
                windowMaxIndexes.removeLast()
            }
            
            // Add a new value
            windowMaxIndexes.append(n)
        }

        maxes.append(nums[windowMaxIndexes.first!])
        
        for n in k..<nums.count {
            // Remove an element outside the window
            if let first = windowMaxIndexes.first, first <= n - k {
                windowMaxIndexes.removeFirst()
            }
            
            // Update maxes
            while let last = windowMaxIndexes.last, nums[last] <= nums[n] {
                windowMaxIndexes.removeLast()
            }
            
            // Add a new value
            windowMaxIndexes.append(n)
            maxes.append(nums[windowMaxIndexes.first!])
        }
        
        return maxes
    }
}
