//
//  33.SearchInRotatedSortedArray.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 8/8/2023.
//

import Foundation

/// Search in Rotated Sorted Array
///
/// There is an integer array `nums` sorted in ascending order (with distinct values).
///
/// Prior to being passed to your function, nums is possibly rotated at an unknown pivot index `k` (`1 <= k < nums.length`) such that the resulting array is `[nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]]` (0-indexed). For example, `[0,1,2,4,5,6,7]` might be rotated at pivot index 3 and become `[4,5,6,7,0,1,2]`.
///
/// Given the array `nums` after the possible rotation and an integer `target`, return the index of `target` if it is in `nums`, or `-1` if it is not in `nums`.
///
/// You must write an algorithm with `O(log n)` runtime complexity.
///
/// **Difficulty:** Medium
///
/// **Topics:** Array, Binary Search
///
/// - SeeAlso: [33. Search in Rotated Sorted Array](https://leetcode.com/problems/search-in-rotated-sorted-array/)
public enum P0033 {
    
    /// - Complexity: O(log n)
    ///
    /// - Parameters:
    ///   - nums: An integer array sorted in ascending order (with distinct values).
    ///   - target: An integer.
    /// - Returns: An index of `target` if it is in `nums`, or `-1` if it is not in `nums`.
    public static func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0, r = nums.count - 1
        
        while l <= r {
            let m = l + (r - l) / 2
            if target == nums[m] {
                return m
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
        
        return -1
    }
}

