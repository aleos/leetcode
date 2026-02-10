//
//  17.LetterCombinationsOfAPhoneNumber.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import Foundation

/// Letter Combinations of a Phone Number
///
/// Given a string containing digits from `2-9` inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.
///
/// A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.
///
/// **Difficulty:** Medium
///
/// **Topics:** Hash Table, String, Backtracking
///
/// - SeeAlso: [17. Letter Combinations of a Phone Number](https://leetcode.com/problems/letter-combinations-of-a-phone-number/)
public enum P0017 {
    private static let digitsMapping: [Character: String] = ["2": "abc", "3": "def", "4": "ghi", "5": "jkl", "6": "mno", "7": "pqrs", "8": "tuv", "9": "wxyz"]
    
    /// - Parameter digits: 2: abc, 3: def, 4: ghi, 5: jkl, 6: mno, 7: pqrs, 8: tuv, 9: wxyz
    /// - Returns: All possible letter combinations that the number could represent in any order.
    public static func letterCombinations(_ digits: String) -> [String] {
        var combinations: [String] = []
        if let lastDigit = digits.first {
            combinations = digitsMapping[lastDigit]?.flatMap({ [String($0)] }) ?? []
        }
        for d in digits.dropFirst() {
            combinations = combinations.flatMap { combination in
                digitsMapping[d]?.map({ combination + String($0) }) ?? []
            }
        }
        return combinations
    }
}
