//
//  1295.FindNumbersWithEvenNumberOfDigits.swift
//  
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import Foundation

/// [1295. Find Numbers with Even Number of Digits](https://leetcode.com/problems/find-numbers-with-even-number-of-digits/)
class FindNumbersWithEvenNumberOfDigits {
    
    /// Given an array nums of integers, return how many of them contain an even number of digits.
    ///
    /// - Parameter nums: An array of integers.
    /// - Returns: How many of integers contain an even number of digits.
    func findNumbers(_ nums: [Int]) -> Int {
        nums.reduce(0) { partialResult, num in
            isEven(digits(in: num)) ? partialResult + 1 : partialResult
        }
    }
    
    private func digits(in num: Int) -> Int {
        var num = num
        var digitsNumber = 0
        repeat {
            num /= 10
            digitsNumber += 1
        } while num != 0
        return digitsNumber
    }
    
    private func isEven(_ num: Int) -> Bool { num % 2 == 0 }
}
