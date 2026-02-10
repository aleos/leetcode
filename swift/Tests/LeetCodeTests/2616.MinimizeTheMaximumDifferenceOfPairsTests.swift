//
//  2616.MinimizeTheMaximumDifferenceOfPairsTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 9/8/2023.
//

import Testing

@testable import LeetCode

/// [2616. Minimize the Maximum Difference of Pairs](https://leetcode.com/problems/minimize-the-maximum-difference-of-pairs/)
///
/// ## Constraints:
/// - `1 <= nums.length <= 105`
/// - `0 <= nums[i] <= 109`
/// - `0 <= p <= (nums.length)/2`
@Suite("2616. Minimize the Maximum Difference of Pairs")
struct P2616Tests {
    
    /// ## Example 1:
    ///     Input: nums = [10,1,2,7,1,3], p = 2
    ///     Output: 1
    ///     Explanation: The first pair is formed from the indices 1 and 4, and the second pair is formed from the indices 2 and 5.
    ///     The maximum difference is max(|nums[1] - nums[4]|, |nums[2] - nums[5]|) = max(0, 1) = 1. Therefore, we return 1.
    @Test("Minimize max difference with 2 pairs")
    func example1() {
        #expect(P2616.minimizeMax([10,1,2,7,1,3], 2) == 1)
    }
    
    /// ## Example 2:
    ///     Input: nums = [4,2,1,2], p = 1
    ///     Output: 0
    ///     Explanation: Let the indices 1 and 3 form a pair. The difference of that pair is |2 - 2| = 0, which is the minimum we can attain.
    @Test("Perfect match with zero difference")
    func example2() {
        #expect(P2616.minimizeMax([4,2,1,2], 1) == 0)
    }
}

