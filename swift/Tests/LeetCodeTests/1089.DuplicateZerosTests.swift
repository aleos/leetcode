//
//  1089.DuplicateZerosTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 3/8/2023.
//

import Testing

@testable import LeetCode

/// [1089. Duplicate Zeros](https://leetcode.com/problems/duplicate-zeros/)
///
/// ## Constraints:
/// - `1 <= arr.length <= 104`
/// - `0 <= arr[i] <= 9`
@Suite("1089. Duplicate Zeros")
struct P1089Tests {
    
    /// ## Example 1:
    ///     Input: arr = [1,0,2,3,0,4,5,0]
    ///     Output: [1,0,0,2,3,0,0,4]
    ///     Explanation: After calling your function, the input array is modified to: /// [1,0,0,2,3,0,0,4]
    @Test("Duplicate zeros in array with multiple zeros")
    func example1() {
        var arr = [1,0,2,3,0,4,5,0]
        P1089.duplicateZeros(&arr)
        #expect(arr == [1,0,0,2,3,0,0,4])
    }
    
    /// ## Example 2:
    ///     Input: arr = [1,2,3]
    ///     Output: [1,2,3]
    ///     Explanation: After calling your function, the input array is modified to: [1,2,3]
    @Test("Array with no zeros remains unchanged")
    func example2() {
        var arr = [1,2,3]
        P1089.duplicateZeros(&arr)
        #expect(arr == [1,2,3])
    }
}

