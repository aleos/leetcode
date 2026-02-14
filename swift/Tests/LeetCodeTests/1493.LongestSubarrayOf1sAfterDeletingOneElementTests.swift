import Testing

@testable import LeetCode

/// [1493. Longest Subarray of 1's After Deleting One Element](https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/)
@Suite("1493. Longest Subarray of 1's After Deleting One Element")
struct P1493Tests {
    
    /// Example 1:
    /// - Input: `nums = [1,1,0,1]`
    /// - Output: `3`
    /// - Explanation: After deleting the number in position 2, [1,1,1] contains 3 numbers with value of 1's.
    @Test("Delete single 0 between 1s")
    func example1() {
        #expect(P1493.longestSubarray([1,1,0,1]) == 3)
    }
    
    /// Example 2:
    /// - Input: `nums = [0,1,1,1,0,1,1,0,1]`
    /// - Output: `5`
    /// - Explanation: After deleting the number in position 4, [0,1,1,1,1,1,0,1] longest subarray with value of 1's is [1,1,1,1,1].
    @Test("Multiple 0s, delete optimal one")
    func example2() {
        #expect(P1493.longestSubarray([0,1,1,1,0,1,1,0,1]) == 5)
    }

    /// Example 3:
    /// - Input: `nums = [1,1,1]`
    /// - Output: `2`
    /// - Explanation: You must delete one element.
    @Test("All 1s, must delete one")
    func example3() {
        #expect(P1493.longestSubarray([1,1,1]) == 2)
    }
    
    @Test("Additional test cases")
    func additionalCases() {
        #expect(P1493.longestSubarray([0,0,0,1,1,1,0,1,1,0,0,0,0,1,0,0,0,0,0,0]) == 5)
        #expect(P1493.longestSubarray([1,1,0,0,1,1,1,0,1]) == 4)
    }

    /// Array with all zeros should return 0
    @Test("All zeros returns 0")
    func allZeros() {
        #expect(P1493.longestSubarray([0,0,0]) == 0)
    }
    
    /// Array ending with zero should handle tail update correctly
    @Test("Ends with zero returns correct length")
    func endsWithZero() {
        #expect(P1493.longestSubarray([1,1,0]) == 2)
    }
}

