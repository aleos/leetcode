//
//  74.SearchA2DMatrixTests.swift
//  
//
//  Created by Alexander Ostrovsky on 7/8/2023.
//

import XCTest

@testable import LeetCode

/// [74. Search a 2D Matrix](https://leetcode.com/problems/search-a-2d-matrix/)
///
/// **Example 1**:
///
///     Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
///     Output: true
///
/// **Example 2**:
///
///     Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13
///     Output: false
///
///
/// **Constraints**:
///
/// - `m == matrix.length`
/// - `n == matrix[i].length`
/// - `1 <= m, n <= 100`
/// - `-104 <= matrix[i][j], target <= 104`
final class SearchA2DMatrixTests: XCTestCase {
    
    let solution = SearchA2DMatrix()
    
    func testExample1() throws {
        XCTAssertEqual(solution.searchMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 3), true)
    }
    
    func testExample2() throws {
        XCTAssertEqual(solution.searchMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 13), false)
    }
}
