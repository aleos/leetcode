//
//  SingleNumberII.swift
//  
//
//  Created by Alexander Ostrovsky on 4/7/2023.
//

/// [137. Single Number II](https://leetcode.com/problems/single-number-ii/)
///
/// Given an integer array `nums` where every element appears three times except for one, which appears **exactly once**. *Find the single element and return it.*
///
/// - Complexity: You must implement a solution with a linear runtime complexity and use only constant extra space.
class SingleNumberII {
    func singleNumber(_ nums: [Int]) -> Int {
        let size = MemoryLayout<Int>.size * 8
        var bitsCount = Array(repeating: 0, count: size)
        for num in nums {
            for i in 0..<size {
                bitsCount[i] += (num >> i) & 1
            }
        }
        bitsCount = bitsCount.map { $0 % 3 }
        let result = (0..<size).reduce(into: 0) { partialResult, position in
            partialResult |= bitsCount[position] << position
        }
        return result
    }
}

