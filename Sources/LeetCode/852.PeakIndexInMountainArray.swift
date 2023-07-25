//
//  852.PeakIndexInMountainArray.swift
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
class PeakIndexInMountainArray {
    
    /// - Parameter arr: An array `arr`is  a **mountain**.
    /// - Returns: The index `i` such that `arr[0] < arr[1] < ... < arr[i - 1] < arr[i] > arr[i + 1] > ... > arr[arr.length - 1]`.
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        
        func searchThePeak(left: Int, right: Int) -> Int {
            let middle = left + (right - left) / 2

            if middle == 0 || arr[middle - 1] < arr[middle] {
                if middle == arr.count - 1 || arr[middle] > arr[middle + 1] {
                    return middle
                } else {
                    return searchThePeak(left: middle + 1, right: right)
                }
            } else {
                return searchThePeak(left: left, right: middle - 1)
            }
        }
        
        return searchThePeak(left: 0, right: arr.count - 1)
    }
}
