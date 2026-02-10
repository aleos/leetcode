//
//  2361.MinimumCostsUsingTheTrainLineTests.swift
//  
//
//  Created by Alexander Ostrovsky on 1/8/2023.
//

import XCTest

@testable import LeetCode

/// [2361. Minimum Costs Using the Train Line](https://leetcode.com/problems/minimum-costs-using-the-train-line/)
///
/// **Example 1**:
///
///     Input: regular = [1,6,9,5], express = [5,2,3,10], expressCost = 8
///     Output: [1,7,14,19]
///     Explanation: The diagram above shows how to reach stop 4 from stop 0 with minimum cost.
///     - Take the regular route from stop 0 to stop 1, costing 1.
///     - Take the express route from stop 1 to stop 2, costing 8 + 2 = 10.
///     - Take the express route from stop 2 to stop 3, costing 3.
///     - Take the regular route from stop 3 to stop 4, costing 5.
///     The total cost is 1 + 10 + 3 + 5 = 19.
///     Note that a different route could be taken to reach the other stops with minimum cost.
///
/// **Example 2**:
///
///     Input: regular = [11,5,13], express = [7,10,6], expressCost = 3
///     Output: [10,15,24]
///     Explanation: The diagram above shows how to reach stop 3 from stop 0 with minimum cost.
///     - Take the express route from stop 0 to stop 1, costing 3 + 7 = 10.
///     - Take the regular route from stop 1 to stop 2, costing 5.
///     - Take the express route from stop 2 to stop 3, costing 3 + 6 = 9.
///     The total cost is 10 + 5 + 9 = 24.
///     Note that the expressCost is paid again to transfer back to the express route.
///
/// **Constraints**:
///
/// - `n == regular.length == express.length`
/// - `1 <= n <= 105`
/// - `1 <= regular[i], express[i], expressCost <= 105`
final class MinimumCostsUsingTheTrainLineTests: XCTestCase {
    
    func testExample1() {
        XCTAssertEqual(P2361.minimumCosts([1,6,9,5], [5,2,3,10], 8), [1,7,14,19])
    }
    
    func testExample2() {
        XCTAssertEqual(P2361.minimumCosts([11,5,13], [7,10,6], 3), [10,15,24])
    }
}
