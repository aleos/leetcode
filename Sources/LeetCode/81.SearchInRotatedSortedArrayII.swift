//
//  81.SearchInRotatedSortedArrayII.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 10/8/2023.
//

import Foundation

/// Search in Rotated Sorted Array II
///
/// There is an integer array `nums` sorted in non-decreasing order (not necessarily with distinct values).
///
/// Before being passed to your function, `nums` is rotated at an unknown pivot index `k` (`0 <= k < nums.length`) such that the resulting array is `[nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]]` (0-indexed). For example, `[0,1,2,4,4,4,5,6,6,7]` might be rotated at pivot index `5` and become `[4,5,6,6,7,0,1,2,4,4]`.
///
/// Given the array `nums` after the rotation and an integer `target`, return `true` if target is in `nums`, or `false` if it is not in `nums`.
///
/// You must decrease the overall operation steps as much as possible.
///
/// **Difficulty:** Medium
///
/// **Topics:** Array, Binary Search
///
/// - SeeAlso: [81. Search in Rotated Sorted Array II](https://leetcode.com/problems/search-in-rotated-sorted-array-ii/)
public enum P0081 {
    
    /// - Parameters:
    ///   - nums: An integer array sorted in non-decreasing order (not necessarily with distinct values).
    ///   - target: An integer.
    /// - Returns: `true` if target is in `nums`, or `false` if it is not in `nums`.
    public static func search(_ nums: [Int], _ target: Int) -> Bool {
        var l = 0, r = nums.count - 1
        
        while l <= r {
            while l < r && nums[l] == nums[r] {
                if nums[l] == target {
                    return true
                }
                l += 1
                r -= 1
            }
            
            let m = l + (r - l) / 2
            if target == nums[m] {
                return true
            } else if nums[l] <= nums[m] { // left array is sorted
                if target < nums[m] && target >= nums[l] { // target in the left array
                    r = m - 1
                } else {
                    l = m + 1
                }
            } else { // right array is sorted
                if target > nums[m] && target <= nums[r] { // target in the right array
                    l = m + 1
                } else {
                    r = m - 1
                }
            }
        }
        
        return false
    }
}

