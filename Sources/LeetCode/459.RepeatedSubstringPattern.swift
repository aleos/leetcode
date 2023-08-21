//
//  459.RepeatedSubstringPattern.swift
//  
//
//  Created by Alexander Ostrovsky on 21/8/2023.
//

import Foundation

/// [459. Repeated Substring Pattern](https://leetcode.com/problems/repeated-substring-pattern/)
class RepeatedSubstringPattern {
    
    /// Given a string `s`, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together.
    ///
    /// - Parameter s: A string.
    /// - Returns: `true` if it can be constructed by taking a substring of it and appending multiple copies of the substring together.
    func repeatedSubstringPattern(_ s: String) -> Bool {
        let ss = s + s
        return ss[ss.index(after: ss.startIndex)..<ss.index(before: ss.endIndex)].contains(s)
    }
}
