//
//  767.ReorganizeString.swift
//  
//
//  Created by Alexander Ostrovsky on 23/8/2023.
//

import Foundation

/// [767. Reorganize String](https://leetcode.com/problems/reorganize-string/)
class ReorganizeString {
    
    /// Given a string `s`, rearrange the characters of `s` so that any two adjacent characters are not the same.
    ///
    /// Return any possible rearrangement of `s` or return `""` if not possible.
    ///
    /// - Parameter s: A string.
    /// - Returns: Any possible rearrangement of `s` or return `""` if not possible.
    func reorganizeString(_ s: String) -> String {
        let frequences = s.reduce(into: [:]) { f, c in
            f[c, default: 0] += 1
        }
        var sortedFrequences = frequences.sorted { $0.value > $1.value }
        
        guard sortedFrequences.first!.value <= s.count + 1 else { return "" }
        
        var result = ""
        while !sortedFrequences.isEmpty {
            guard result.last != sortedFrequences[0].key else { return "" }
            
            result.append(sortedFrequences[0].key)
            sortedFrequences[0].value -= 1
            if sortedFrequences.count > 1 {
                result.append(sortedFrequences[1].key)
                sortedFrequences[1].value -= 1
                if sortedFrequences[1].value == 0 {
                    sortedFrequences.remove(at: 1)
                }
            }
            if sortedFrequences[0].value == 0 {
                sortedFrequences.remove(at: 0)
            }
            sortedFrequences = sortedFrequences.sorted { $0.value > $1.value }
        }
        
        return result
    }
}
