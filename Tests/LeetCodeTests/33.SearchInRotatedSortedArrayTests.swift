//
//  33.SearchInRotatedSortedArrayTests.swift
//  
//
//  Created by Alexander Ostrovsky on 8/8/2023.
//

import XCTest

@testable import LeetCode

/// [33. Search in Rotated Sorted Array](https://leetcode.com/problems/search-in-rotated-sorted-array/)
///
/// **Example 1**:
///
///     Input: nums = [4,5,6,7,0,1,2], target = 0
///     Output: 4
///
/// **Example 2**:
///
///     Input: nums = [4,5,6,7,0,1,2], target = 3
///     Output: -1
///
/// **Example 3**:
///
///     Input: nums = [1], target = 0
///     Output: -1
///
///
/// **Constraints**:
///
/// - `1 <= nums.length <= 5000`
/// - `-104 <= nums[i] <= 104`
/// - All values of `nums` are unique.
/// - `nums` is an ascending array that is possibly rotated.
/// - `-104 <= target <= 104`
final class SearchInRotatedSortedArrayTests: XCTestCase {
    
    let solution = SearchInRotatedSortedArray()
    
    func testExample1() throws {
        XCTAssertEqual(solution.search([4,5,6,7,0,1,2], 0), 4)
    }
    
    func testExample2() throws {
        XCTAssertEqual(solution.search([4,5,6,7,0,1,2], 3), -1)
    }
    
    func testExample3() throws {
        XCTAssertEqual(solution.search([1], 0), -1)
    }
    
    func testExample() throws {
        XCTAssertEqual(solution.search([4,5,6,7,0,1,2], 1), 5)
        XCTAssertEqual(solution.search([4,5,6,7,8,1,2,3], 8), 4)
        XCTAssertEqual(solution.search([5,1,2,3,4], 1), 1)
    }
}
