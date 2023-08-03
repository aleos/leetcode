//
//  852.PeakIndexInAMountainArrayTests.swift
//  
//
//  Created by Alexander Ostrovsky on 25/7/2023.
//

import XCTest

@testable import LeetCode

/// [852. Peak Index in a Mountain Array](https://leetcode.com/problems/peak-index-in-a-mountain-array/)
///
/// **Example 1**:
///
///     Input: arr = [0,1,0]
///     Output: 1
///
/// **Example 2**:
///
///     Input: arr = [0,2,1,0]
///     Output: 1
///
/// **Example 3**:
///
///     Input: arr = [0,10,5,2]
///     Output: 1
///
///
/// **Constraints**:
///
/// - `3 <= arr.length <= 105`
/// - `0 <= arr[i] <= 106`
/// - `arr` is guaranteed to be a mountain array.
final class PeakIndexInAMountainArrayTests: XCTestCase {
    
    let solution = PeakIndexInAMountainArray()
    
    func testExample1() {
        XCTAssertEqual(solution.peakIndexInMountainArray([0,1,0]), 1)
    }
    
    func testExample2() {
        XCTAssertEqual(solution.peakIndexInMountainArray([0,2,1,0]), 1)
    }
    
    func testExample3() {
        XCTAssertEqual(solution.peakIndexInMountainArray([0,10,5,2]), 1)
    }
    
    func testExample() {
        XCTAssertEqual(solution.peakIndexInMountainArray([3,5,3,2,0]), 1)
    }
}
