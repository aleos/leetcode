//
//  74.SearchA2DMatrixTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 7/8/2023.
//

import Testing

@testable import LeetCode

/// [74. Search a 2D Matrix](https://leetcode.com/problems/search-a-2d-matrix/)
///
/// ## Constraints:
/// - `m == matrix.length`
/// - `n == matrix[i].length`
/// - `1 <= m, n <= 100`
/// - `-104 <= matrix[i][j], target <= 104`
@Suite("74. Search a 2D Matrix")
struct P0074Tests {
    
    /// ## Example 1:
    ///     Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
    ///     Output: true
    @Test("Target found in matrix")
    func example1() {
        #expect(P0074.searchMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 3) == true)
    }
    
    /// ## Example 2:
    ///     Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13
    ///     Output: false
    @Test("Target not found in matrix")
    func example2() {
        #expect(P0074.searchMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 13) == false)
    }
}

