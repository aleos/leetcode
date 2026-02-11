//
//  852.PeakIndexInAMountainArray.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 25/7/2023.
//

/// Peak Index in a Mountain Array
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
/// You must solve it in `O(log(arr.length))` time complexity.
///
/// **Difficulty:** Medium
///
/// **Topics:** Junior, Array, Binary Search, Weekly Contest 89
///
/// - SeeAlso: [852. Peak Index in a Mountain Array](https://leetcode.com/problems/peak-index-in-a-mountain-array/)
public enum P0852 {
    
    /// - Parameter arr: An array `arr`is  a **mountain**.
    /// - Returns: The index `i` such that `arr[0] < arr[1] < ... < arr[i - 1] < arr[i] > arr[i + 1] > ... > arr[arr.length - 1]`.
    /// - Complexity:
    ///   **Time**: O(log *n*), where *n* is the length of the array,\
    ///   **Space**: O(1).
    public static func peakIndexInMountainArray(_ arr: [Int]) -> Int {
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
