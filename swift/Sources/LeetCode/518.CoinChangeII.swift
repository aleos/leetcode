/// Coin Change II
///
/// You are given an integer array `coins` representing coins of different denominations and an integer `amount` representing a total amount of money.
///
/// Return the number of combinations that make up that amount. If that amount of money cannot be made up by any combination of the coins, return `0`.
///
/// You may assume that you have an infinite number of each kind of coin.
///
/// The answer is **guaranteed** to fit into a signed **32-bit** integer.
///
/// **Difficulty:** Medium
///
/// **Topics:** Array, Dynamic Programming
///
/// - Precondition:
///   - `1 <= coins.length <= 300`
///   - `1 <= coins[i] <= 5000`
///   - All the values of `coins` are unique.
///   - `0 <= amount <= 5000`
///
/// - SeeAlso: [518. Coin Change II](https://leetcode.com/problems/coin-change-ii/)
public enum P0518 {
    /// Top-down memoization.
    ///
    /// - Complexity:
    ///   **Time**: O(*n* × *amount*), where *n* is the number of coins and *amount* is the target amount,\
    ///   **Space**: O(*n* × *amount*), where *n* is the number of coins and *amount* is the target amount.
    public static func change(_ amount: Int, _ coins: [Int]) -> Int {
        var memo: [[Int?]] = Array(repeating: Array(repeating: nil, count: coins.count), count: amount + 1)
        
        func change(_ amount: Int, _ coinIndex: Int) -> Int {
            guard coins.indices.contains(coinIndex) else { return 0 }
            guard amount != 0 else { return 1 }
            guard amount > 0 else { return 0 }
            if let memo = memo[amount][coinIndex] {
                return memo
            }
            
            let result = change(amount - coins[coinIndex], coinIndex) + change(amount, coinIndex + 1)
            memo[amount][coinIndex] = result
            return result
        }
        
        return change(amount, 0)
    }
    
    /// Bottom-up tabulation.
    ///
    /// - Complexity:
    ///   **Time**: O(*n* × *amount*), where *n* is the number of coins and *amount* is the target amount,\
    ///   **Space**: O(*n* × *amount*), where *n* is the number of coins and *amount* is the target amount.
    public static func changeTabulation(_ amount: Int, _ coins: [Int]) -> Int {
        var table: [[Int]] = Array(repeating: Array(repeating: 0, count: amount + 1), count: coins.count)
        table[0][0] = 1
        for c in 0..<coins.count {
            for a in 0...amount {
                if c > 0 {
                    table[c][a] += table[c - 1][a]
                }
                if a + coins[c] <= amount {
                    table[c][a + coins[c]] = table[c][a]
                }
            }
        }
        
        return table[coins.count - 1][amount]
    }
}
