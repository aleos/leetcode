//
//  518.CoinChangeII.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 11/8/2023.
//

import Foundation

/// Coin Change II
///
/// You are given an integer array `coins` representing coins of different denominations and an integer `amount` representing a total amount of money.
///
/// Return the number of combinations that make up that amount. If that amount of money cannot be made up by any combination of the coins, return `0`.
///
/// You may assume that you have an infinite number of each kind of coin.
///
/// The answer is guaranteed to fit into a signed 32-bit integer.
///
/// **Difficulty:** Medium
///
/// **Topics:** Array, Dynamic Programming
///
/// - SeeAlso: [518. Coin Change II](https://leetcode.com/problems/coin-change-ii/)
public enum P0518 {
    
    /// - Parameters:
    ///   - amount: A total amount of money.
    ///   - coins: An integer array of coins of different denominations.
    /// - Returns: The number of combinations that make up that amount. If that amount of money cannot be made up by any combination of the coins, return `0`.
    /// - Complexity:
    ///   **Time**: O(*n* × *amount*), where *n* is the number of coin types and *amount* is the target amount,\
    ///   **Space**: O(*amount*), where *amount* is the target amount.
    public static func change(_ amount: Int, _ coins: [Int]) -> Int {
        if coins.count == 0 && amount == 0 { return 1 }
        if amount == 0 {
            if amount < coins[0] { return 1 }
        }
        
        var dp = Array(repeating: 0, count: amount + 1)
        dp[0] = 1
        
        for coin in coins {
            if coin > amount { break }
            for j in coin...amount {
                dp[j] += dp[j - coin]
            }
        }
        
        return dp[amount]
    }
}
