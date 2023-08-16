//
//  239.SlidingWindowMaximumTests.swift
//  
//
//  Created by Alexander Ostrovsky on 16/8/2023.
//

import XCTest

@testable import LeetCode

/// [239. Sliding Window Maximum](https://leetcode.com/problems/sliding-window-maximum/)
///
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
///
/// **Example 2**:
///
///     Input: nums = [1], k = 1
///     Output: [1]
///
///
/// **Constraints**:
///
/// - `1 <= nums.length <= 105`
/// - `-104 <= nums[i] <= 104`
/// - `1 <= k <= nums.length`
final class SlidingWindowMaximumTests: XCTestCase {
    
    let solution = SlidingWindowMaximum()
    
    func testExample1() {
        XCTAssertEqual(solution.maxSlidingWindow([1,3,-1,-3,5,3,6,7], 3), [3,3,5,5,6,7])
    }
    
    func testExample2() {
        XCTAssertEqual(solution.maxSlidingWindow([1], 1), [1])
    }
}
