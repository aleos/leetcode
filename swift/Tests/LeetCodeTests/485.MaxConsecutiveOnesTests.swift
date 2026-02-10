//
//  485.MaxConsecutiveOnesTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import Testing

@testable import LeetCode

/// [485. Max Consecutive Ones](https://leetcode.com/problems/max-consecutive-ones/)
///
/// ## Constraints:
/// - `1 <= nums.length <= 105`
/// - `nums[i]` is either `0` or `1`.
@Suite("485. Max Consecutive Ones")
struct P0485Tests {
    
    /// ## Example 1:
    ///     Input: nums = [1,1,0,1,1,1]
    ///     Output: 3
    ///     Explanation: The first two digits or the last three digits are consecutive 1s. The /// maximum number of consecutive 1s is 3.
    @Test("Find maximum of 3 consecutive ones")
    func example1() {
        #expect(P0485.findMaxConsecutiveOnes([1,1,0,1,1,1]) == 3)
    }
    
    /// ## Example 2:
    ///     Input: nums = [1,0,1,1,0,1]
    ///     Output: 2
    @Test("Find maximum of 2 consecutive ones")
    func example2() {
        #expect(P0485.findMaxConsecutiveOnes([1,0,1,1,0,1]) == 2)
    }
}

