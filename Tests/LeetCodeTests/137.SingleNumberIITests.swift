//
//  137.SingleNumberIITests.swift
//  
//
//  Created by Alexander Ostrovsky on 4/7/2023.
//

import XCTest
@testable import LeetCode

/// [137. Single Number II](https://leetcode.com/problems/single-number-ii/)
///
/// **Example 1**:
///
///     Input: nums = [2,2,3,2]
///     Output: 3
///
/// **Example 2**:
///
///     Input: nums = [0,1,0,1,0,1,99]
///     Output: 99
///
/// **Constraints**:
/// - `1 <= nums.length <= 3 * 104`
/// - `-231 <= nums[i] <= 231 - 1`
/// - Each element in `nums` appears exactly three times except for one element which appears once.
final class SingleNumberIITests: XCTestCase {
    
    func testExample1() {
        let solution = SingleNumberII()
        XCTAssertEqual(solution.singleNumber([2,2,3,2]), 3)
    }
    
    func testExample2() {
        let solution = SingleNumberII()
        XCTAssertEqual(solution.singleNumber([0,1,0,1,0,1,99]), 99)
    }

    func testExample() {
        let solution = SingleNumberII()
        XCTAssertEqual(solution.singleNumber([2,2,-3,2]), -3)
    }
}
