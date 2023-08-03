//
//  1089.DuplicateZerosTests.swift
//  
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import XCTest

@testable import LeetCode

/// [1089. Duplicate Zeros](https://leetcode.com/problems/duplicate-zeros/)
///
/// **Example 1**:
///
///     Input: arr = [1,0,2,3,0,4,5,0]
///     Output: [1,0,0,2,3,0,0,4]
///     Explanation: After calling your function, the input array is modified to: /// [1,0,0,2,3,0,0,4]
///
/// **Example 2**:
///
///     Input: arr = [1,2,3]
///     Output: [1,2,3]
///     Explanation: After calling your function, the input array is modified to: [1,2,3]
///
///
/// Constraints:
///
/// - `1 <= arr.length <= 104`
/// - `0 <= arr[i] <= 9`
final class DuplicateZerosTests: XCTestCase {
    
    let solution = DuplicateZeros()
    
    func testExample1() {
        var arr = [1,0,2,3,0,4,5,0]
        solution.duplicateZeros(&arr)
        XCTAssertEqual(arr, [1,0,0,2,3,0,0,4])
    }
    
    func testExample2() {
        var arr = [1,2,3]
        solution.duplicateZeros(&arr)
        XCTAssertEqual(arr, [1,2,3])
    }
}
