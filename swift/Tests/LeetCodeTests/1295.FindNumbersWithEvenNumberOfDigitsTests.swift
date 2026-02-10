//
//  1295.FindNumbersWithEvenNumberOfDigitsTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import Testing

@testable import LeetCode

/// [1295. Find Numbers with Even Number of Digits](https://leetcode.com/problems/find-numbers-with-even-number-of-digits/)
///
/// ## Constraints:
/// `1 <= nums.length <= 500`
/// `1 <= nums[i] <= 105`
@Suite("1295. Find Numbers with Even Number of Digits")
struct P1295Tests {
    
    /// ## Example 1:
    ///     Input: nums = [12,345,2,6,7896]
    ///     Output: 2
    ///     Explanation:
    ///     12 contains 2 digits (even number of digits).
    ///     345 contains 3 digits (odd number of digits).
    ///     2 contains 1 digit (odd number of digits).
    ///     6 contains 1 digit (odd number of digits).
    ///     7896 contains 4 digits (even number of digits).
    ///     Therefore only 12 and 7896 contain an even number of digits.
    @Test("Array with 2 numbers having even digits")
    func example1() {
        #expect(P1295.findNumbers([12,345,2,6,7896]) == 2)
    }
    
    /// ## Example 2:
    ///     Input: nums = [555,901,482,1771]
    ///     Output: 1
    ///     Explanation:
    ///     Only 1771 contains an even number of digits.
    @Test("Array with 1 number having even digits")
    func example2() {
        #expect(P1295.findNumbers([555,901,482,1771]) == 1)
    }
}

