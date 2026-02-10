//
//  767.ReorganizeString.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 23/8/2023.
//

import Foundation

/// Reorganize String
///
/// Given a string `s`, rearrange the characters of `s` so that any two adjacent characters are not the same.
///
/// Return any possible rearrangement of `s` or return `""` if not possible.
///
/// **Difficulty:** Medium
///
/// **Topics:** Staff, Hash Table, String, Greedy, Sorting, Heap (Priority Queue), Counting, Weekly Contest 68
///
/// - SeeAlso: [767. Reorganize String](https://leetcode.com/problems/reorganize-string/)
public enum P0767 {
    
    /// - Parameter s: A string.
    /// - Returns: Any possible rearrangement of `s` or return `""` if not possible.
    /// - Complexity:
    ///   **Time**: O(*n*), where *n* is the length of the string,\
    ///   **Space**: O(*1*).
    public static func reorganizeString(_ s: String) -> String {
        let length = s.count
        let frequences = Array(s.reduce(into: [:]) { f, c in f[c, default: 0] += 1 })
        let maxFreq = frequences.max(by: { $0.value < $1.value })!
        guard maxFreq.value <= (length + 1) / 2 else { return "" }
        
        var result = Array(s)
        var i = 0
        for _ in 0..<maxFreq.value {
            result[i] = maxFreq.key
            i += 2
        }
        for letter in frequences where letter.key != maxFreq.key {
            for _ in 0..<letter.value {
                if i >= length {
                    i = 1
                }
                result[i] = letter.key
                i += 2
            }
        }
        
        return String(result)
    }
}
