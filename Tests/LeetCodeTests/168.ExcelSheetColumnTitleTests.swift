//
//  168.ExcelSheetColumnTitleTests.swift
//  LeetCode
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
    
    func testExample1() {
        XCTAssertEqual(P0168.convertToTitle(1), "A")
    }
    
    func testExample2() {
        XCTAssertEqual(P0168.convertToTitle(28), "AB")
    }

    func testExample3() {
        XCTAssertEqual(P0168.convertToTitle(701), "ZY")
    }
}
