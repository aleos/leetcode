//
//  26.RemoveDuplicatesFromSortedArray.swift
//  
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import Foundation

/// [26. Remove Duplicates from Sorted Array](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)
class RemoveDuplicatesFromSortedArray {
    
    /// Given an integer array `nums` sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in `nums`.
    ///
    /// Consider the number of unique elements of `nums` to be `k`, to get accepted, you need to do the following things:
    /// - Change the array nums such that the first `k` elements of `nums` contain the unique elements in the order they were present in `nums` initially. The remaining elements of nums are not important as well as the size of `nums`.
    /// - Return `k`.
    ///
    /// - Parameter nums: An integer array sorted in non-decreasing order.
    /// - Returns: The number of unique elements in `nums`.
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        var i = 1
        var j = 1
        var lastValue = nums[0]
        while j < nums.count {
            if nums[j] != lastValue {
                nums[i] = nums[j]
                lastValue = nums[i]
                i += 1
            }
            j += 1
        }
        return i
    }
}
