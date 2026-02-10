//
//  518.CoinChangeIITests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 11/8/2023.
//

import XCTest

@testable import LeetCode

/// [518. Coin Change II](https://leetcode.com/problems/coin-change-ii/)
///
/// **Example 1**:
///
///     Input: amount = 5, coins = [1,2,5]
///     Output: 4
///     Explanation: there are four ways to make up the amount:
///     5=5
///     5=2+2+1
///     5=2+1+1+1
///     5=1+1+1+1+1
///
/// **Example 2**:
///
///     Input: amount = 3, coins = [2]
///     Output: 0
///     Explanation: the amount of 3 cannot be made up just with coins of 2.
///
/// **Example 3**:
///
///     Input: amount = 10, coins = [10]
///     Output: 1
///
///
/// **Constraints**:
///
/// - `1 <= coins.length <= 300`
/// - `1 <= coins[i] <= 5000`
/// - All the values of `coins` are unique.
/// - `0 <= amount <= 5000`
final class CoinChangeIITests: XCTestCase {
    
    func testExample1() {
        XCTAssertEqual(P0518.change(5, [1,2,5]), 4)
    }
    
    func testExample2() {
        XCTAssertEqual(P0518.change(3, [2]), 0)
    }
    
    func testExample3() {
        XCTAssertEqual(P0518.change(10, [10]), 1)
    }
}
