//
//  136.SingleNumberTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 4/7/2023.
//

import Testing

@testable import LeetCode

/// [136. Single Number](https://leetcode.com/problems/single-number/)
///
/// **Constraints**:
///
/// - `1 <= nums.length <= 3 * 104`
/// - `-3 * 104 <= nums[i] <= 3 * 104`
/// - Each element in the array appears twice except for one element which appears only once.
@Suite("Single Number")
struct SingleNumberTests {
    
    /// **Example 1**:
    ///
    ///     Input: nums = [2,2,1]
    ///     Output: 1
    @Test("Find single number among pairs")
    func example1() {
        #expect(P0136.singleNumber([2,2,1]) == 1)
    }
    
    /// **Example 2**:
    ///
    ///     Input: nums = [4,1,2,1,2]
    ///     Output: 4
    @Test("Single number is 4")
    func example2() {
        #expect(P0136.singleNumber([4,1,2,1,2]) == 4)
    }

    /// **Example 3**:
    ///
    ///     Input: nums = [1]
    ///     Output: 1
    @Test("Array with single element")
    func example3() {
        #expect(P0136.singleNumber([1]) == 1)
    }
}
