//
//  77.Combinations.swift
//  
//
//  Created by Alexander Ostrovsky on 1/8/2023.
//

import Foundation

/// Combinations
///
/// Given two integers n and k, return all possible combinations of k numbers chosen from the range [1, n].
///
/// You may return the answer in any order.
///
/// **Difficulty:** Medium
///
/// **Topics:** Backtracking, Combinatorics
///
/// - SeeAlso: [77. Combinations](https://leetcode.com/problems/combinations/)
public enum P0077 {
    
    /// - Parameters:
    ///   - n: A range [1, n].
    ///   - k: Number of numbers.
    /// - Returns: All possible combinations of `k` numbers chosen from the range `[1, n]`. You may return the answer in any order.
    public static func combine(_ n: Int, _ k: Int) -> [[Int]] {
        func combine(from: Int, to: Int, count: Int) -> [[Int]] {
            guard count != 1 else { return Array((from...to).map({ [$0] })) }
            var combinations = [[Int]]()
            for num in from...to - count + 1 {
                for remainder in combine(from: num + 1, to: to, count: count - 1) {
                    combinations.append([num] + remainder)
                }
            }
            return combinations
        }
        
        return combine(from: 1, to: n, count: k)
    }
}

