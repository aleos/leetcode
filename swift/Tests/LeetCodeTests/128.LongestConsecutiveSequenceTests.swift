import Testing

@testable import LeetCode

/// [128. Longest Consecutive Sequence](https://leetcode.com/problems/longest-consecutive-sequence/)
@Suite("128. Longest Consecutive Sequence")
struct P0128Tests {

    /// Example 1:
    /// - Input: `nums = [100,4,200,1,3,2]`
    /// - Output: `4`
    /// - Explanation: The longest consecutive elements sequence is `[1, 2, 3, 4]`. Therefore its length is 4.
    @Test("Sequence among scattered values")
    func example1() {
        #expect(P0128.longestConsecutive([100, 4, 200, 1, 3, 2]) == 4)
    }

    /// Example 2:
    /// - Input: `nums = [0,3,7,2,5,8,4,6,0,1]`
    /// - Output: `9`
    @Test("Run with duplicate at the start")
    func example2() {
        #expect(P0128.longestConsecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1]) == 9)
    }

    /// Example 3:
    /// - Input: `nums = [1,0,1,2]`
    /// - Output: `3`
    @Test("Duplicates inside the run")
    func example3() {
        #expect(P0128.longestConsecutive([1, 0, 1, 2]) == 3)
    }

    @Test("Empty array")
    func emptyArray() {
        #expect(P0128.longestConsecutive([]) == 0)
    }

    @Test("Single element")
    func singleElement() {
        #expect(P0128.longestConsecutive([5]) == 1)
    }

    @Test("All duplicates")
    func allDuplicates() {
        #expect(P0128.longestConsecutive([7, 7, 7, 7]) == 1)
    }

    @Test("No consecutive pairs")
    func noConsecutivePairs() {
        #expect(P0128.longestConsecutive([10, 30, 20, 40]) == 1)
    }

    @Test("Negative and positive values")
    func negativeAndPositive() {
        #expect(P0128.longestConsecutive([-3, -2, -1, 0, 1, 5, 7]) == 5)
    }

    @Test("Longest run is not the last seen")
    func longestRunIsNotLast() {
        #expect(P0128.longestConsecutive([1, 2, 3, 4, 10, 20, 21]) == 4)
    }
}
