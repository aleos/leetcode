//
//  81.SearchInRotatedSortedArrayIITests.swift
//  
//
//  Created by Alexander Ostrovsky on 10/8/2023.
//

import XCTest

@testable import LeetCode

/// [81. Search in Rotated Sorted Array II](https://leetcode.com/problems/search-in-rotated-sorted-array-ii/)
///
/// **Example 1**:
///
///     Input: nums = [2,5,6,0,0,1,2], target = 0
///     Output: true
///
/// **Example 2**:
///
///     Input: nums = [2,5,6,0,0,1,2], target = 3
///     Output: false
///
///
/// **Constraints**:
///
/// - `1 <= nums.length <= 5000`
/// - `-104 <= nums[i] <= 104`
/// - `nums` is guaranteed to be rotated at some pivot.
/// - `-104 <= target <= 104`
final class SearchInRotatedSortedArrayIITests: XCTestCase {
    
    let solution = SearchInRotatedSortedArrayII()
    
    func testExample1() throws {
        XCTAssertEqual(solution.search([2,5,6,0,0,1,2], 0), true)
    }
    
    func testExample2() throws {
        XCTAssertEqual(solution.search([2,5,6,0,0,1,2], 3), false)
    }
    
    func testExample() throws {
        XCTAssertEqual(solution.search([1,0,1,1,1], 0), true)
    }
}
