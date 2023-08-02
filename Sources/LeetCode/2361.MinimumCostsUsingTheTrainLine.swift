//
//  2361.MinimumCostsUsingTheTrainLine.swift
//  
//
//  Created by Alexander Ostrovsky on 1/8/2023.
//

import Foundation

/// [2361. Minimum Costs Using the Train Line](https://leetcode.com/problems/minimum-costs-using-the-train-line/)
/// 
/// A train line going through a city has two routes, the regular route and the express route. Both routes go through the same `n + 1` stops labeled from `0` to `n`. Initially, you start on the regular route at stop `0`.
///
/// Note that:
/// 
/// - There is no cost to transfer from the express route back to the regular route.
/// - You pay expressCost every time you transfer from the regular route to the express route.
/// - There is no extra cost to stay on the express route.
///
/// Return a 1-indexed array costs of length n, where costs[i] is the minimum cost to reach stop i from stop 0.
/// 
/// Note that a stop can be counted as reached from either route.
class MinimumCostsUsingTheTrainLine {
    /// - Parameters:
    ///   - regular: `regular[i]` describes the cost it takes to go from stop `i - 1` to stop `i` using the regular route.
    ///   - express: `express[i]` describes the cost it takes to go from stop `i - 1` to stop `i` using the express route.
    ///   - expressCost: The cost to transfer from the regular route to the express route.
    /// - Returns: A 1-indexed array costs of length n, where costs[i] is the minimum cost to reach stop i from stop 0.
    func minimumCosts(_ regular: [Int], _ express: [Int], _ expressCost: Int) -> [Int] {
        var minCosts = [Int]()
        var lastRegularCost = 0
        var lastExpressCost = expressCost
        for i in 0..<regular.count {
            let regularCost = regular[i] + min(lastRegularCost, lastExpressCost)
            let expressCost = express[i] + min(expressCost + lastRegularCost, lastExpressCost)
            minCosts.append(min(regularCost, expressCost))
            lastRegularCost = regularCost
            lastExpressCost = expressCost
        }
        return minCosts
    }
}
