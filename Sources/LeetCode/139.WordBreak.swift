//
//  139.WordBreak.swift
//  
//
//  Created by Alexander Ostrovsky on 4/8/2023.
//

import Foundation

/// Word Break
///
/// Given a string `s` and a dictionary of strings `wordDict`, return `true` if `s` can be segmented into a space-separated sequence of one or more dictionary words.
///
/// Note that the same word in the dictionary may be reused multiple times in the segmentation.
///
/// **Difficulty:** Medium
///
/// **Topics:** Array, Hash Table, String, Dynamic Programming, Trie, Memoization
///
/// - SeeAlso: [139. Word Break](https://leetcode.com/problems/word-break/)
public enum P0139 {
    
    /// - Parameters:
    ///   - s: A string.
    ///   - wordDict: A dictionary of strings.
    /// - Returns: `true` if `s` can be segmented into a space-separated sequence of one or more dictionary words.
    /// - Complexity:
    ///   **Time**: O(*<#...#>*), where *<#n#>* is <#...#> ,\
    ///   **Space**: O(*<#...#>*), where *<#n#>* is <#...#>.
    public static func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        guard !s.isEmpty else { return true }
        
        let wordSet = Set(wordDict)
        var seen = Set<String.Index>()
        
        var context = [s.startIndex]
        
        while let start = context.popLast() {
            var end = start
            while end < s.endIndex {
                end = s.index(after: end)
                guard !seen.contains(end) else { continue }
                if wordSet.contains(String(s[start..<end])) {
                    guard end != s.endIndex else { return true }
                    context.append(end)
                    seen.insert(end)
                }
            }
        }
        return false
    }
}
