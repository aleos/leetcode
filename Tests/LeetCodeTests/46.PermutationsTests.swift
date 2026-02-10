//
//  46.PermutationsTests.swift
//  
//
//  Created by Alexander Ostrovsky on 2/8/2023.
//

import XCTest

@testable import LeetCode

/// [46. Permutations](https://leetcode.com/problems/permutations/)
///
/// **Example 1**:
///
///     Input: nums = [1,2,3]
///     Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
///
/// **Example 2**:
///
///     Input: nums = [0,1]
///     Output: [[0,1],[1,0]]
///
/// **Example 3**:
///
///     Input: nums = [1]
///     Output: [[1]]
///
///
/// **Constraints**:
///
/// - `1 <= nums.length <= 6`
/// - `-10 <= nums[i] <= 10`
/// - All the integers of `nums` are unique
final class PermutationsTests: XCTestCase {
    
    func testExample1() throws {
        XCTAssertEqual(Set(P0046.permute([1,2,3])), Set([[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]))
    }
    
    func testExample2() throws {
        XCTAssertEqual(Set(P0046.permute([0,1])), Set([[0,1],[1,0]]))
    }
    
    func testExample3() throws {
        XCTAssertEqual(P0046.permute([1]), [[1]])
    }
}
