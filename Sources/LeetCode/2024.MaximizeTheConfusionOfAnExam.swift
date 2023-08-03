//
//  2024.MaximizeTheConfusionOfAnExam.swift
//  
//
//  Created by Alexander Ostrovsky on 7/7/2023.
//

import Foundation

/// [2024. Maximize the Confusion of an Exam](https://leetcode.com/problems/maximize-the-confusion-of-an-exam/)
class MaximizeTheConfusionOfAnExam {
    
    /// A teacher is writing a test with `n` true/false questions, with `'T'` denoting true and `'F'` denoting false. He wants to confuse the students by maximizing the number of consecutive questions with the same answer (multiple trues or multiple falses in a row).
    ///
    /// You are given a string `answerKey`, where `answerKey[i]` is the original answer to the `ith` question. In addition, you are given an integer `k`, the maximum number of times you may perform the following operation:
    ///
    /// - Change the answer key for any question to `'T'` or `'F'` (i.e., set `answerKey[i]` to `'T'` or `'F'`).
    ///
    /// Return the maximum number of consecutive 'T's or 'F's in the answer key after performing the operation at most k times.
    ///
    /// - Parameters:
    ///   - answerKey: A string, where `answerKey[i]` is the original answer to the `ith` question.
    ///   - k: The maximum number of times you may perform the following operation:
    ///     - Change the answer key for any question to `'T'` or `'F'` (i.e., set `answerKey[i]` to `'T'` or `'F'`).
    /// - Returns: The maximum number of consecutive `'T'`s or `'F'`s in the answer key after performing the operation at most `k` times.
    func maxConsecutiveAnswers(_ answerKey: String, _ k: Int) -> Int {
        let answers = Array(answerKey)
        
        var leftTIndex = 0
        var changeFToTCount = 0
        var maxConsecutiveT = 0
        
        var leftFIndex = 0
        var changeTToFCount = 0
        var maxConsecutiveF = 0
        
        for (i, answer) in answers.enumerated() {
            changeFToTCount += answer == "F" ? 1 : 0
            while changeFToTCount > k {
                changeFToTCount -= answers[leftTIndex] == "F" ? 1 : 0
                leftTIndex += 1
            }
            maxConsecutiveT = max(maxConsecutiveT, i - leftTIndex + 1)
            
            changeTToFCount += answer == "T" ? 1 : 0
            while changeTToFCount > k {
                changeTToFCount -= answers[leftFIndex] == "T" ? 1 : 0
                leftFIndex += 1
            }
            maxConsecutiveF = max(maxConsecutiveF, i - leftFIndex + 1)
        }
        
        return max(maxConsecutiveT, maxConsecutiveF)
    }
}
