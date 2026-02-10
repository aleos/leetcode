//
//  2024.MaximizeTheConfusionOfAnExamTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 7/7/2023.
//

import XCTest

@testable import LeetCode

/// [2024. Maximize the Confusion of an Exam](https://leetcode.com/problems/maximize-the-confusion-of-an-exam/)
///
/// **Example 1**:
///
///     Input: answerKey = "TTFF", k = 2
///     Output: 4
///     Explanation: We can replace both the 'F's with 'T's to make answerKey = "TTTT".
///     There are four consecutive 'T's.
///
/// **Example 2**:
///
///     Input: answerKey = "TFFT", k = 1
///     Output: 3
///     Explanation: We can replace the first 'T' with an 'F' to make answerKey = "FFFT".
///     Alternatively, we can replace the second 'T' with an 'F' to make answerKey = "TFFF".
///     In both cases, there are three consecutive 'F's.
///
/// **Example 3**:
///
///     Input: answerKey = "TTFTTFTT", k = 1
///     Output: 5
///     Explanation: We can replace the first 'F' to make answerKey = "TTTTTFTT"
///     Alternatively, we can replace the second 'F' to make answerKey = "TTFTTTTT".
///     In both cases, there are five consecutive 'T's.
///
///
/// **Constraints**:
///
/// - `n == answerKey.length`
/// - `1 <= n <= 5 * 104`
/// - `answerKey[i]` is either `'T'` or `'F'`
/// - `1 <= k <= n`
final class MaximizeTheConfusionOfAnExamTests: XCTestCase {
    
    func testExample1() {
        XCTAssertEqual(P2024.maxConsecutiveAnswers("TTFF", 2), 4)
    }
    
    func testExample2() {
        XCTAssertEqual(P2024.maxConsecutiveAnswers("TFFT", 1), 3)
    }
    
    func testExample3() {
        XCTAssertEqual(P2024.maxConsecutiveAnswers("TTFTTFTT", 1), 5)
    }
}
