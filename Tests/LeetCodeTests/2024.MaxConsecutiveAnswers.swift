//
//  2024.MaxConsecutiveAnswers.swift
//  
//
//  Created by Alexander Ostrovsky on 7/7/2023.
//

import XCTest
@testable import LeetCode

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
/// - `answerKey[i] is either 'T' or 'F'`
/// - `1 <= k <= n`
final class MaxConsecutiveAnswersTests: XCTestCase {
    let solution = MaxConsecutiveAnswers()
    
    func testExample1() {
        XCTAssertEqual(solution.maxConsecutiveAnswers("TTFF", 2), 4)
    }
    
    func testExample2() {
        XCTAssertEqual(solution.maxConsecutiveAnswers("TFFT", 1), 3)
    }
    
    func testExample3() {
        XCTAssertEqual(solution.maxConsecutiveAnswers("TTFTTFTT", 1), 5)
    }
}
