//
//  168.ExcelSheetColumnTitleTests.swift
//  
//
//  Created by Alexander Ostrovsky on 22/8/2023.
//

import XCTest

@testable import LeetCode

/// [168. Excel Sheet Column Title](https://leetcode.com/problems/excel-sheet-column-title/)
///
/// For example:
///
///     A -> 1
///     B -> 2
///     C -> 3
///     ...
///     Z -> 26
///     AA -> 27
///     AB -> 28
///     ...
///
///
/// **Example 1**:
///
///     Input: columnNumber = 1
///     Output: "A"
///
/// **Example 2**:
///
///     Input: columnNumber = 28
///     Output: "AB"
///
/// **Example 3**:
///
///     Input: columnNumber = 701
///     Output: "ZY"
///
///
/// **Constraints**:
///
/// - `1 <= columnNumber <= 2^31 - 1`
final class ExcelSheetColumnTitleTests: XCTestCase {
    
    let solution = ExcelSheetColumnTitle()
    
    func testExample1() {
        XCTAssertEqual(solution.convertToTitle(1), "A")
    }
    
    func testExample2() {
        XCTAssertEqual(solution.convertToTitle(28), "AB")
    }

    func testExample3() {
        XCTAssertEqual(solution.convertToTitle(701), "ZY")
    }
}
