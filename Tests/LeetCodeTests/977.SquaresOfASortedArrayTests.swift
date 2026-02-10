//
//  977.SquaresOfASortedArrayTests.swift
//  
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import XCTest

@testable import LeetCode

/// [977. Squares of a Sorted Array](https://leetcode.com/problems/squares-of-a-sorted-array/)
///
/// **Example 1**:
///
///     Input: nums = [-4,-1,0,3,10]
///     Output: [0,1,9,16,100]
///     Explanation: After squaring, the array becomes [16,1,0,9,100].
///     After sorting, it becomes [0,1,9,16,100].
///
/// **Example 2**:
///
///     Input: nums = [-7,-3,2,3,11]
///     Output: [4,9,9,49,121]
///
///
/// **Constraints**:
///
/// - `1 <= nums.length <= 104`
/// - `-104 <= nums[i] <= 104`
/// - `nums` is sorted in non-decreasing order.
final class SquaresOfASortedArrayTests: XCTestCase {
    
    func testExample1() {
        XCTAssertEqual(P0977.sortedSquares([-4,-1,0,3,10]), [0,1,9,16,100])
    }
    
    func testExample2() {
        XCTAssertEqual(P0977.sortedSquares([-7,-3,2,3,11]), [4,9,9,49,121])
    }
}
