//
//  239.SlidingWindowMaximumTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 16/8/2023.
//

import Testing

@testable import LeetCode

/// [239. Sliding Window Maximum](https://leetcode.com/problems/sliding-window-maximum/)
///
/// **Constraints**:
///
/// - `1 <= nums.length <= 105`
/// - `-104 <= nums[i] <= 104`
/// - `1 <= k <= nums.length`
@Suite("Sliding Window Maximum")
struct SlidingWindowMaximumTests {
    
    /// **Example 1**:
    ///
    ///     Input: nums = [1,3,-1,-3,5,3,6,7], k = 3
    ///     Output: [3,3,5,5,6,7]
    ///     Explanation:
    ///     Window position                Max
    ///     ---------------               -----
    ///     [1  3  -1] -3  5  3  6  7       3
    ///      1 [3  -1  -3] 5  3  6  7       3
    ///      1  3 [-1  -3  5] 3  6  7       5
    ///      1  3  -1 [-3  5  3] 6  7       5
    ///      1  3  -1  -3 [5  3  6] 7       6
    ///      1  3  -1  -3  5 [3  6  7]      7
    @Test("Sliding window of size 3")
    func example1() {
        #expect(P0239.maxSlidingWindow([1,3,-1,-3,5,3,6,7], 3) == [3,3,5,5,6,7])
    }
    
    /// **Example 2**:
    ///
    ///     Input: nums = [1], k = 1
    ///     Output: [1]
    @Test("Single element window")
    func example2() {
        #expect(P0239.maxSlidingWindow([1], 1) == [1])
    }
}
