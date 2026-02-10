//
//  2305.FairDistributionOfCookies.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 6/7/2023.
//

import Foundation

/// Fair Distribution of Cookies
///
/// You are given an integer array `cookies`, where `cookies[i]` denotes the number of cookies in the `ith` bag. You are also given an integer `k` that denotes the number of children to distribute all the bags of cookies to. All the cookies in the same bag must go to the same child and cannot be split up.
///
/// The **unfairness** of a distribution is defined as the **maximum total** cookies obtained by a single child in the distribution.
///
/// Return the minimum unfairness of all distributions.
///
/// **Difficulty:** Medium
///
/// **Topics:** Staff, Array, Dynamic Programming, Backtracking, Bit Manipulation, Bitmask, Weekly Contest 297
///
/// - SeeAlso: [2305. Fair Distribution of Cookies](https://leetcode.com/problems/fair-distribution-of-cookies/)
public enum P2305 {
    
    /// - Parameters:
    ///   - cookies: Integer array cookies, where `cookies[i]` denotes the number of cookies in the `ith` bag.
    ///   - k: The number of children to distribute all the bags of cookies to.
    /// - Returns: The **minimum** unfairness of all distributions.
    /// - Complexity:
    ///   **Time**: O(*k^n*), where *n* is the number of cookie bags and *k* is the number of children,\
    ///   **Space**: O(*n*), where *n* is the recursion depth.
    public static func distributeCookies(_ cookies: [Int], _ k: Int) -> Int {
        
        func distribute(bag: Int, distributedCookies: [Int], kidsWithoutCookies: Int) -> Int {
            guard cookies.count - bag >= kidsWithoutCookies else { return .max }
            guard bag != cookies.count else {
                return distributedCookies.max() ?? .max
            }
            var maxUnfairness: Int = .max
            for child in 0..<k {
                var kidsWithoutCookies = kidsWithoutCookies
                let childGets = distributedCookies[child] + cookies[bag]
                // It makes sense to continue only if unfairness has not yet been exceeded.
                if childGets < maxUnfairness {
                    if distributedCookies[child] == 0 {
                        kidsWithoutCookies -= 1
                    }
                    var distributedCookies = distributedCookies
                    distributedCookies[child] += cookies[bag]
                    maxUnfairness = min(maxUnfairness, distribute(bag: bag + 1, distributedCookies: distributedCookies, kidsWithoutCookies: kidsWithoutCookies))
                }
            }
            return maxUnfairness
        }
        
        return distribute(bag: 0, distributedCookies: [Int](repeating: 0, count: cookies.count), kidsWithoutCookies: k)
    }
}
