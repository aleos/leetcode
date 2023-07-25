//
//  852.PeakIndexInAMountainArray.swift
//  
//
//  Created by Alexander Ostrovsky on 25/7/2023.
//

/// [852. Peak Index in a Mountain Array](https://leetcode.com/problems/peak-index-in-a-mountain-array/)
///
/// Given a mountain array arr, return the index `i` such that `arr[0] < arr[1] < ... < arr[i - 1] < arr[i] > arr[i + 1] > ... > arr[arr.length - 1]`.
///
/// An array `arr` a **mountain** if the following properties hold:
///
/// - `arr.length >= 3`
/// - There exists some `i` with `0 < i < arr.length - 1` such that:
///     - `arr[0] < arr[1] < ... < arr[i - 1] < arr[i]`
///     - `arr[i] > arr[i + 1] > ... > arr[arr.length - 1]`
///
/// - Complexity: You must solve it in `O(log(arr.length))` time complexity.
class PeakIndexInAMountainArray {
    
    /// - Parameter arr: An array `arr`is  a **mountain**.
    /// - Returns: The index `i` such that `arr[0] < arr[1] < ... < arr[i - 1] < arr[i] > arr[i + 1] > ... > arr[arr.length - 1]`.
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        var left = 0
        var right = arr.count - 1
        var mid: Int
        
        while left < right {
            mid = (left + right) / 2
            if arr[mid] < arr[mid + 1] {
                left = mid + 1
            } else {
                right = mid
            }
        }
        return left
    }
}
