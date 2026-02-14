import Testing

@testable import LeetCode

/// [518. Coin Change II](https://leetcode.com/problems/coin-change-ii/)
@Suite("518. Coin Change II")
struct P0518Tests {
    
    /// ## Example 1:
    ///     Input: amount = 5, coins = [1,2,5]
    ///     Output: 4
    ///     Explanation: there are four ways to make up the amount:
    ///     5=5
    ///     5=2+2+1
    ///     5=2+1+1+1
    ///     5=1+1+1+1+1
    @Test("Four ways to make amount 5")
    func example1() {
        #expect(P0518.change(5, [1,2,5]) == 4)
    }
    
    /// ## Example 2:
    ///     Input: amount = 3, coins = [2]
    ///     Output: 0
    ///     Explanation: the amount of 3 cannot be made up just with coins of 2.
    @Test("Amount cannot be made with available coins")
    func example2() {
        #expect(P0518.change(3, [2]) == 0)
    }
    
    /// ## Example 3:
    ///     Input: amount = 10, coins = [10]
    ///     Output: 1
    @Test("Exact match with single coin")
    func example3() {
        #expect(P0518.change(10, [10]) == 1)
    }
    
    /// Edge case: zero amount with coins should return 1
    @Test("Zero amount with coins returns 1")
    func zeroAmountWithCoins() {
        #expect(P0518.change(0, [5]) == 1)
    }
    
    /// First coin greater than amount triggers early break and yields 0 combinations
    @Test("First coin greater than amount returns 0")
    func firstCoinGreaterThanAmount() {
        #expect(P0518.change(3, [5]) == 0)
    }
}

