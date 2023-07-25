//
//  1493.LongestSubarrayOf1sAfterDeletingOneElementTests.swift
//  
//
//  Created by Alexander Ostrovsky on 5/7/2023.
//

import XCTest
@testable import LeetCode

/// [1493. Longest Subarray of 1's After Deleting One Element](https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/)
///
/// **Example 1**:
///
///     Input: nums = [1,1,0,1]
///     Output: 3
///     Explanation: After deleting the number in position 2, [1,1,1] contains 3 numbers with value of 1's.
///
/// **Example 2**:
///
///     Input: nums = [0,1,1,1,0,1,1,0,1]
///     Output: 5
///     Explanation: After deleting the number in position 4, [0,1,1,1,1,1,0,1] longest subarray with value of 1's is [1,1,1,1,1].
///
/// **Example 3**:
///
///     Input: nums = [1,1,1]
///     Output: 2
///     Explanation: You must delete one element.
///
///
/// **Constraints**:
///
/// - `1 <= nums.length <= 10^5`
/// - `nums[i]` is either `0` or `1`.
final class LongestSubarrayOf1sAfterDeletingOneElementTests: XCTestCase {
    let solution = LongestSubarrayOf1sAfterDeletingOneElement()
    
    func testExample1() {
        XCTAssertEqual(solution.longestSubarray([1,1,0,1]), 3)
    }
    
    func testExample2() {
        XCTAssertEqual(solution.longestSubarray([0,1,1,1,0,1,1,0,1]), 5)
    }

    func testExample3() {
        XCTAssertEqual(solution.longestSubarray([1,1,1]), 2)
    }
    
    func testExample() {
        XCTAssertEqual(solution.longestSubarray([0,0,0,1,1,1,0,1,1,0,0,0,0,1,0,0,0,0,0,0]), 5)
        XCTAssertEqual(solution.longestSubarray([1,1,0,0,1,1,1,0,1]), 4)
    }
}
