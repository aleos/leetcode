//
//  168.ExcelSheetColumnTitle.swift
//  
//
//  Created by Alexander Ostrovsky on 22/8/2023.
//

import Foundation

/// [168. Excel Sheet Column Title](https://leetcode.com/problems/excel-sheet-column-title/)
class ExcelSheetColumnTitle {
    
    /// Given an integer `columnNumber`, return its corresponding column title as it appears in an Excel sheet.
    ///
    /// - Parameter columnNumber: An integer.
    /// - Returns: Corresponding column title as it appears in an Excel sheet.
    func convertToTitle(_ columnNumber: Int) -> String {
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
    private func letter(_ shift: UInt32) -> String {
        String(UnicodeScalar(65 + shift)!)
    }
}
