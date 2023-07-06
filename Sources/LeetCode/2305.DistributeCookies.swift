//
//  2305.DistributeCookies.swift
//  
//
//  Created by Alexander Ostrovsky on 6/7/2023.
//

/// [2305. Fair Distribution of Cookies](https://leetcode.com/problems/fair-distribution-of-cookies/)
///
/// You are given an integer array cookies, where cookies[i] denotes the number of cookies in the ith bag. You are also given an integer k that denotes the number of children to distribute all the bags of cookies to. All the cookies in the same bag must go to the same child and cannot be split up.
///
/// The **unfairness** of a distribution is defined as the **maximum total** cookies obtained by a single child in the distribution.
///
/// Return the **minimum** unfairness of all distributions.
class DistributeCookies {
    
    /// - Parameters:
    ///   - cookies: Integer array cookies, where cookies[i] denotes the number of cookies in the ith bag.
    ///   - k: The number of children to distribute all the bags of cookies to.
    /// - Returns: The **minimum** unfairness of all distributions.
    func distributeCookies(_ cookies: [Int], _ k: Int) -> Int {
        return distribute(cookies, distributedCookies: Array<Int>(repeating: 0, count: k))
    }
    
    private func distribute(_ cookies: [Int], distributedCookies: [Int], next child: Int = 0) -> Int {
        guard child != distributedCookies.count else {
            // Everybody has a bag of cookies. Lets distribute the remaining bags
            return distributeRemaining(cookies, distributedCookies: distributedCookies)
        }
        var unfairness = Int.max
        // The first distribution. All the children should get at least one bag of cookies. Select a bag for the other child. He doesn't have cookies yet.
        for bag in 0..<cookies.endIndex {
            var cookies = cookies
            let count = cookies.remove(at: bag)
            var distributedCookies = distributedCookies
            distributedCookies[child] += count
            // Give a bag to the next child
            unfairness = min(unfairness, distribute(cookies, distributedCookies: distributedCookies, next: child + 1))
        }
        return unfairness
    }
    
    private func distributeRemaining(_ cookies: [Int], distributedCookies: [Int]) -> Int {
        guard !cookies.isEmpty else {
            return distributedCookies.max() ?? 0
        }
        var unfairness = Int.max
        for bag in 0..<cookies.endIndex {
            var cookies = cookies
            let count = cookies.remove(at: bag)
            for child in 0..<distributedCookies.endIndex {
                var distributedCookies = distributedCookies
                distributedCookies[child] += count
                // It makes sense to continue only if unfairness has not yet been exceeded.
                if distributedCookies.max() ?? Int.max < unfairness {
                    unfairness = min(unfairness, distributeRemaining(cookies, distributedCookies: distributedCookies))
                }
            }
        }
        return unfairness
    }
}
