//
//  1295.FindNumbersWithEvenNumberOfDigits.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import Foundation

/// Find Numbers with Even Number of Digits
///
/// Given an array nums of integers, return how many of them contain an even number of digits.
///
/// **Difficulty:** Easy
///
/// **Topics:** Mid Level, Array, Math, Weekly Contest 168
///
/// - SeeAlso: [1295. Find Numbers with Even Number of Digits](https://leetcode.com/problems/find-numbers-with-even-number-of-digits/)
public enum P1295 {
    
    /// - Parameter nums: An array of integers.
    /// - Returns: How many of integers contain an even number of digits.
    /// - Complexity:
    ///   **Time**: O(*n* × *d*), where *n* is the number of integers and *d* is the average number of digits,\
    ///   **Space**: O(*1*).
    public static func findNumbers(_ nums: [Int]) -> Int {
        nums.reduce(0) { partialResult, num in
            isEven(digits(in: num)) ? partialResult + 1 : partialResult
        }
    }
    
    private static func digits(in num: Int) -> Int {
        var num = num
        var digitsNumber = 0
        repeat {
            num /= 10
            digitsNumber += 1
        } while num != 0
        return digitsNumber
    }
    
    private static func isEven(_ num: Int) -> Bool { num % 2 == 0 }
}
