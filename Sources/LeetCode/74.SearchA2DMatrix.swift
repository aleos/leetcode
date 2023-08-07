//
//  74.SearchA2DMatrix.swift
//  
//
//  Created by Alexander Ostrovsky on 7/8/2023.
//

import Foundation

/// [74. Search a 2D Matrix](https://leetcode.com/problems/search-a-2d-matrix/)
class SearchA2DMatrix {
    
    /// You are given an `m x n` integer matrix `matrix` with the following two properties:
    /// - Each row is sorted in non-decreasing order.
    /// - The first integer of each row is greater than the last integer of the previous row.
    ///
    /// Given an integer `target`, return `true` if `target` is in `matrix` or `false` otherwise.
    ///
    /// You must write a solution in `O(log(m * n))` time complexity.
    ///
    /// - Complexity: O(log(m * n))
    ///
    /// - Parameters:
    ///   - matrix: An `m x n` integer matrix with the following two properties:
    ///     - Each row is sorted in non-decreasing order.
    ///     - The first integer of each row is greater than the last integer of the previous row.
    ///   - target: An integer.
    /// - Returns: `true` if `target` is in `matrix` or `false` otherwise.
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        
        /// Adapter to use flat indexes instead of 2D.
        /// - Parameter i: A 'flat' index.
        func value(at i: Int) -> Int {
            matrix[i / matrix[0].count][i % matrix[0].count]
        }
        
        var l = 0, r = matrix.count * matrix[0].count - 1
        
        while l < r {
            let m = (l + r) / 2
            let value = value(at: m)
            print("l \(l), r \(r) | m \(m), v \(value)")
            if value == target {
                return true
            } else {
                if value < target {
                    l = m + 1
                } else {
                    r = m
                }
            }
        }
        
        return value(at: l) == target
    }
}
