//
//  88.MergeSortedArrayTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import XCTest

@testable import LeetCode

/// [88. Merge Sorted Array](https://leetcode.com/problems/merge-sorted-array/)
///
/// **Constraints**:
///
/// - `nums1.length == m + n`
/// - `nums2.length == n`
/// - `0 <= m, n <= 200`
/// - `1 <= m + n <= 200`
/// - `-109 <= nums1[i], nums2[j] <= 109`
final class MergeSortedArrayTests: XCTestCase {
    
    /// **Example 1**:
    ///
    ///     Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
    ///     Output: [1,2,2,3,5,6]
    ///     Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
    ///     The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.
    func testExample1() throws {
        var nums1 = [1,2,3,0,0,0]
        P0088.merge(&nums1, 3, [2,5,6], 3)
        XCTAssertEqual(nums1, [1,2,2,3,5,6])
    }
    
    /// **Example 2**:
    ///
    ///     Input: nums1 = [1], m = 1, nums2 = [], n = 0
    ///     Output: [1]
    ///     Explanation: The arrays we are merging are [1] and [].
    ///     The result of the merge is [1].
    func testExample2() throws {
        var nums1 = [1]
        P0088.merge(&nums1, 1, [], 0)
        XCTAssertEqual(nums1, [1])
    }
    
    /// **Example 3**:
    ///
    ///     Input: nums1 = [0], m = 0, nums2 = [1], n = 1
    ///     Output: [1]
    ///     Explanation: The arrays we are merging are [] and [1].
    ///     The result of the merge is [1].
    ///     Note that because m = 0, there are no elements in nums1. The 0 is only there to ensure the merge result can     fit in nums1.
    func testExample3() throws {
        var nums1 = [0]
        P0088.merge(&nums1, 0, [1], 1)
        XCTAssertEqual(nums1, [1])
    }
}
