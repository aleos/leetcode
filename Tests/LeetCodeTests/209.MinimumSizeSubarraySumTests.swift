//
//  209.MinimumSizeSubarraySumTests.swift
//  
//
//  Created by Alexander Ostrovsky on 6/7/2023.
//

import XCTest

@testable import LeetCode

/// [209. Minimum Size Subarray Sum](https://leetcode.com/problems/minimum-size-subarray-sum/)
///
/// **Example 1**:
///
///     Input: target = 7, nums = [2,3,1,2,4,3]
///     Output: 2
///     Explanation: The subarray [4,3] has the minimal length under the problem constraint.
///
/// **Example 2**:
///
///     Input: target = 4, nums = [1,4,4]
///     Output: 1
///
/// **Example 3**:
///
///     Input: target = 11, nums = [1,1,1,1,1,1,1,1]
///     Output: 0
///
/// **Constraints**:
///
/// - `1 <= target <= 109`
/// - `1 <= nums.length <= 105`
/// - `1 <= nums[i] <= 104`
final class MinimumSizeSubarraySumTests: XCTestCase {
    
    let solution = MinimumSizeSubarraySum()
    
    func testExample1() {
        XCTAssertEqual(solution.minSubArrayLen(7, [2,3,1,2,4,3]), 2)
    }
    
    func testExample2() {
        XCTAssertEqual(solution.minSubArrayLen(4, [1,4,4]), 1)
    }
    
    func testExample3() {
        XCTAssertEqual(solution.minSubArrayLen(11, [1,1,1,1,1,1,1,1]), 0)
    }
}
