//
//  2305.FairDistributionOfCookies.swift
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
class FairDistributionOfCookies {
    
    /// - Parameters:
    ///   - cookies: Integer array cookies, where cookies[i] denotes the number of cookies in the ith bag.
    ///   - k: The number of children to distribute all the bags of cookies to.
    /// - Returns: The **minimum** unfairness of all distributions.
    func distributeCookies(_ cookies: [Int], _ k: Int) -> Int {
        
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
