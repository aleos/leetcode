//
//  459.RepeatedSubstringPattern.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 21/8/2023.
//

import Foundation

/// Repeated Substring Pattern
///
/// Given a string `s`, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together.
///
/// **Difficulty:** Easy
///
/// **Topics:** Staff, String, String Matching
///
/// - SeeAlso: [459. Repeated Substring Pattern](https://leetcode.com/problems/repeated-substring-pattern/)
public enum P0459 {
    
    /// - Parameter s: A string.
    /// - Returns: `true` if it can be constructed by taking a substring of it and appending multiple copies of the substring together.
    /// - Complexity:
    ///   **Time**: O(*<#...#>*), where *<#n#>* is <#...#> ,\
    ///   **Space**: O(*<#...#>*), where *<#n#>* is <#...#>.
    public static func repeatedSubstringPattern(_ s: String) -> Bool {
        let ss = s + s
        return ss[ss.index(after: ss.startIndex)..<ss.index(before: ss.endIndex)].contains(s)
    }
}
