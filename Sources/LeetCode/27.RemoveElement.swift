//
//  27.RemoveElement.swift
//  
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import Foundation

/// [27. Remove Element](https://leetcode.com/problems/remove-element/)
class RemoveElement {
    
    /// Given an integer array `nums` and an integer `val`, remove all occurrences of `val` in `nums` in-place. The order of the elements may be changed. Then return the number of elements in `nums` which are not equal to `val`.
    ///
    /// - Parameters:
    ///   - nums: An integer array.
    ///   - val: An integer.
    /// - Returns: The number of elements in `nums` which are not equal to `val`.
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var rightIndex = nums.count - 1
        var leftIndex = 0
        while leftIndex <= rightIndex {
            if nums[leftIndex] == val { // move to end with shift
                nums[leftIndex] = nums[rightIndex]
                rightIndex -= 1
            } else {
                leftIndex += 1
            }
        }
        return rightIndex + 1
    }
}
