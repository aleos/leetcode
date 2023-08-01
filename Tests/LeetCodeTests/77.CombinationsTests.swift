//
//  77.CombinationsTests.swift
//  
//
//  Created by Alexander Ostrovsky on 1/8/2023.
//

import XCTest
@testable import LeetCode

/// [77. Combinations](https://leetcode.com/problems/combinations/)
///
/// **Example 1**:
///
///     Input: n = 4, k = 2
///     Output: [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
///     Explanation: There are 4 choose 2 = 6 total combinations.
///     Note that combinations are unordered, i.e., [1,2] and [2,1] are considered to be the same combination.
///
/// **Example 2**:
///
///     Input: n = 1, k = 1
///     Output: [[1]]
///     Explanation: There is 1 choose 1 = 1 total combination.
///
///
/// **Constraints**:
///
/// - `1 <= n <= 20`
/// - `1 <= k <= n`
final class CombinationsTests: XCTestCase {
    let solution = Combinations()
    
    func testExample1() throws {
        XCTAssertEqual(solution.combine(4, 2), [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]])
    }
    
    func testExample2() throws {
        XCTAssertEqual(solution.combine(1, 1), [[1]])
    }
}
