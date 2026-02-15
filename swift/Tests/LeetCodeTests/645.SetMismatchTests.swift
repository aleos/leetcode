import Testing

@testable import LeetCode

/// [645. Set Mismatch](https://leetcode.com/problems/set-mismatch/)
@Suite("645. Set Mismatch")
struct P0645Tests {
    
    /// Example 1:
    /// - Input: `nums = [1,2,2,4]`
    /// - Output: `[2,3]`
    /// - Explanation: 2 is duplicated and 3 is missing.
    @Test("nums = [1,2,2,4]")
    func example1() {
        #expect(P0645.findErrorNums([1, 2, 2, 4]) == [2, 3])
    }
    
    /// Example 2:
    /// - Input: `nums = [1,1]`
    /// - Output: `[1,2]`
    /// - Explanation: 1 is duplicated and 2 is missing.
    @Test("nums = [1,1]")
    func example2() {
        #expect(P0645.findErrorNums([1, 1]) == [1, 2])
    }
    
    @Test("Unordered input with larger n")
    func unorderedLargerN() {
        #expect(P0645.findErrorNums([4,1,2,2,5,6,7,8,9,10,3]) == [2, 11])
    }

    /// Edge case: duplicate at end, missing at start
    @Test("Duplicate at end, missing at start: [2,2]")
    func duplicateAtEndMissingAtStart() {
        #expect(P0645.findErrorNums([2, 2]) == [2, 1])
    }
}
