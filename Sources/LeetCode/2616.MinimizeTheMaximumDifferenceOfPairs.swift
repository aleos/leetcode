//
//  2616.MinimizeTheMaximumDifferenceOfPairs.swift
//  
//
//  Created by Alexander Ostrovsky on 9/8/2023.
//

import Foundation

/// [2616. Minimize the Maximum Difference of Pairs](https://leetcode.com/problems/minimize-the-maximum-difference-of-pairs/)
class MinimizeTheMaximumDifferenceOfPairs {
    
    /// You are given a 0-indexed integer array `nums` and an integer `p`. Find `p` pairs of indices of `nums` such that the maximum difference amongst all the pairs is minimized. Also, ensure no index appears more than once amongst the `p` pairs.
    ///
    /// Note that for a pair of elements at the index `i` and `j`, the difference of this pair is `|nums[i] - nums[j]|`, where `|x|` represents the absolute value of `x`.
    ///
    /// Return the minimum maximum difference among all `p` pairs. We define the maximum of an empty set to be zero.
    ///
    /// - Parameters:
    ///   - nums: A 0-indexed integer array.
    ///   - p: An integer.
    /// - Returns: The minimum maximum difference among all `p` pairs.
    func minimizeMax(_ nums: [Int], _ p: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        let nums = nums.sorted()
        
        func pairs(withDiffLessOrEqualTo diff: Int) -> Int {
            var i = 1
            var count = 0
            while i < nums.count {
                if nums[i] - nums[i-1] <= diff {
                    i += 1
                    count += 1
                }
                i += 1
            }
            return count
        }
        
        var l = 0
        var m: Int
        var r = nums[nums.count - 1] - nums[0]
        
        while l < r {
            m = l + (r - l) / 2
            if pairs(withDiffLessOrEqualTo: m) < p {
                l = m + 1
            } else {
                r = m
            }
        }
        
        return l
    }
}
