//
//  137.SingleNumberIITests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 4/7/2023.
//

import Testing

@testable import LeetCode

/// [137. Single Number II](https://leetcode.com/problems/single-number-ii/)
///
/// ## Constraints:
/// - `1 <= nums.length <= 3 * 104`
/// - `-231 <= nums[i] <= 231 - 1`
/// - Each element in `nums` appears exactly three times except for one element which appears once.
@Suite("137. Single Number II")
struct P0137Tests {
    
    /// ## Example 1:
    ///     Input: nums = [2,2,3,2]
    ///     Output: 3
    @Test("Find single number among triplets")
    func example1() {
        #expect(P0137.singleNumber([2,2,3,2]) == 3)
    }
    
    /// ## Example 2:
    ///     Input: nums = [0,1,0,1,0,1,99]
    ///     Output: 99
    @Test("Find single number 99")
    func example2() {
        #expect(P0137.singleNumber([0,1,0,1,0,1,99]) == 99)
    }

    @Test("Negative single number")
    func negativeNumber() {
        #expect(P0137.singleNumber([2,2,-3,2]) == -3)
    }
}

