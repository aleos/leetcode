//
//  1089.DuplicateZeros.swift
//  
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import Foundation

/// [1089. Duplicate Zeros](https://leetcode.com/problems/duplicate-zeros/)
class DuplicateZeros {
    
    /// Given a fixed-length integer array `arr`, duplicate each occurrence of zero, shifting the remaining elements to the right.
    ///
    /// Note that elements beyond the length of the original array are not written. Do the above modifications to the input array in place and do not return anything.
    ///
    /// - Parameter arr: A fixed-length integer array.
    func duplicateZeros(_ arr: inout [Int]) {
        var i = 0
        var j = 0
        if arr[i] == 0 {
            j += 1
        }
        while i < arr.count - 1 && j < arr.count - 1 {
            i += 1
            j += 1
            if arr[i] == 0 {
                j += 1
            }
        }
        
        if j == arr.count { // The last number was 0 and caused the overflow. Fix it.
            arr[j - 1] = 0
            i -= 1
            j -= 2
        }
        while j > 0 {
            arr[j] = arr[i]
            if arr[i] == 0 {
                j -= 1
                arr[j] = 0
            }
            i -= 1
            j -= 1
        }
    }
}
