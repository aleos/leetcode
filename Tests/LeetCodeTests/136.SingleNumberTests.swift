//
//  136.SingleNumberTests.swift
//  
//
//  Created by Alexander Ostrovsky on 4/7/2023.
//

import XCTest
@testable import LeetCode

/// [136. Single Number](https://leetcode.com/problems/single-number/)
///
/// **Example 1**:
///
///     Input: nums = [2,2,1]
///     Output: 1
///
/// **Example 2**:
///
///     Input: nums = [4,1,2,1,2]
///     Output: 4
///
/// **Example 3**:
///
///     Input: nums = [1]
///     Output: 1
///
/// **Constraints**:
///
/// - `1 <= nums.length <= 3 * 104`
/// - `-3 * 104 <= nums[i] <= 3 * 104`
/// - Each element in the array appears twice except for one element which appears only once.
final class SingleNumberTests: XCTestCase {

    func testExample1() throws {
        let solution = SingleNumber()
        XCTAssertEqual(solution.singleNumber([2,2,1]), 1)
    }
    
    func testExample2() throws {
        let solution = SingleNumber()
        XCTAssertEqual(solution.singleNumber([4,1,2,1,2]), 4)
    }

    func testExample3() throws {
        let solution = SingleNumber()
        XCTAssertEqual(solution.singleNumber([1]), 1)
    }
}
