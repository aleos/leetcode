//
//  77.Combinations.swift
//  
//
//  Created by Alexander Ostrovsky on 1/8/2023.
//

import Foundation

/// [77. Combinations](https://leetcode.com/problems/combinations/)
///
/// Given two integers `n` and `k`, return all possible combinations of `k` numbers chosen from the range `[1, n]`.
///
/// You may return the answer in any order.
class Combinations {
    /// - Parameters:
    ///   - n: A range [1, n].
    ///   - k: Number of numbers.
    /// - Returns: all possible combinations of k numbers chosen from the range [1, n]
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
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
