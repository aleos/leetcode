//
//  2024.MaximizeTheConfusionOfAnExamTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 7/7/2023.
//

import Testing

@testable import LeetCode

/// [2024. Maximize the Confusion of an Exam](https://leetcode.com/problems/maximize-the-confusion-of-an-exam/)
///
/// ## Constraints:
/// - `n == answerKey.length`
/// - `1 <= n <= 5 * 104`
/// - `answerKey[i]` is either `'T'` or `'F'`
/// - `1 <= k <= n`
@Suite("2024. Maximize the Confusion of an Exam")
struct P2024Tests {
    
    /// ## Example 1:
    ///     Input: answerKey = "TTFF", k = 2
    ///     Output: 4
    ///     Explanation: We can replace both the 'F's with 'T's to make answerKey = "TTTT".
    ///     There are four consecutive 'T's.
    @Test("Replace 2 characters to maximize consecutive answers")
    func example1() {
        #expect(P2024.maxConsecutiveAnswers("TTFF", 2) == 4)
    }
    
    /// ## Example 2:
    ///     Input: answerKey = "TFFT", k = 1
    ///     Output: 3
    ///     Explanation: We can replace the first 'T' with an 'F' to make answerKey = "FFFT".
    ///     Alternatively, we can replace the second 'T' with an 'F' to make answerKey = "TFFF".
    ///     In both cases, there are three consecutive 'F's.
    @Test("Replace 1 character optimally")
    func example2() {
        #expect(P2024.maxConsecutiveAnswers("TFFT", 1) == 3)
    }
    
    /// ## Example 3:
    ///     Input: answerKey = "TTFTTFTT", k = 1
    ///     Output: 5
    ///     Explanation: We can replace the first 'F' to make answerKey = "TTTTTFTT"
    ///     Alternatively, we can replace the second 'F' to make answerKey = "TTFTTTTT".
    ///     In both cases, there are five consecutive 'T's.
    @Test("Longer answer key with single replacement")
    func example3() {
        #expect(P2024.maxConsecutiveAnswers("TTFTTFTT", 1) == 5)
    }
}

