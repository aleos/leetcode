//
//  26.RemoveDuplicatesFromSortedArrayTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import XCTest

@testable import LeetCode

/// [26. Remove Duplicates from Sorted Array](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)
///
/// Constraints:
///
/// - `1 <= nums.length <= 3 * 104`
/// - `-100 <= nums[i] <= 100`
/// - `nums` is sorted in non-decreasing order.
final class RemoveDuplicatesFromSortedArrayTests: XCTestCase {
    
    /// Example 1:
    ///
    ///     Input: nums = [1,1,2]
    ///     Output: 2, nums = [1,2,_]
    ///     Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
    ///     It does not matter what you leave beyond the returned k (hence they are underscores).
    func testExample1() throws {
        var nums = [1,1,2]
        XCTAssertEqual(P0026.removeDuplicates(&nums), 2)
        XCTAssertEqual(nums[..<2], [1,2])
    }
    
    /// Example 2:
    ///
    ///     Input: nums = [0,0,1,1,1,2,2,3,3,4]
    ///     Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
    ///     Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
    ///     It does not matter what you leave beyond the returned k (hence they are underscores).
    func testExample2() throws {
        var nums = [0,0,1,1,1,2,2,3,3,4]
        XCTAssertEqual(P0026.removeDuplicates(&nums), 5)
        XCTAssertEqual(nums[..<5], [0,1,2,3,4])
    }
}
