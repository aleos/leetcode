//
//  168.ExcelSheetColumnTitle.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 22/8/2023.
//

import Foundation

/// Excel Sheet Column Title
///
/// Given an integer `columnNumber`, return its corresponding column title as it appears in an Excel sheet.
///
/// **Difficulty:** Easy
///
/// **Topics:** Math, String
///
/// - SeeAlso: [168. Excel Sheet Column Title](https://leetcode.com/problems/excel-sheet-column-title/)
public enum P0168 {
    
    /// - Parameter columnNumber: An integer.
    /// - Returns: Corresponding column title as it appears in an Excel sheet.
    /// - Complexity:
    ///   **Time**: O(*<#...#>*), where *<#n#>* is <#...#> ,\
    ///   **Space**: O(*<#...#>*), where *<#n#>* is <#...#>.
    public static func convertToTitle(_ columnNumber: Int) -> String {
        var columnNumber = UInt32(columnNumber)
        let alphabetCount: UInt32 = 26
        var title = ""
        while columnNumber > 0 {
            columnNumber -= 1
            title += letter(columnNumber % alphabetCount)
            columnNumber /= alphabetCount
        }
        return String(title.reversed())
    }
    
    /// - Parameter number: A letter number starting from 1.
    /// - Returns: A letter corresponding to the number
    private static func letter(_ shift: UInt32) -> String {
        String(UnicodeScalar(65 + shift)!)
    }
}
