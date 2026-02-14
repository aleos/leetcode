import Testing

@testable import LeetCode

/// [1470. Shuffle the Array](https://leetcode.com/problems/shuffle-the-array/)
@Suite("1470. Shuffle the Array")
struct P1470Tests {

    /// Example 1:
    /// - Input: `nums = [2,5,1,3,4,7], n = 3`
    /// - Output: `[2,3,5,4,1,7]`
    /// - Explanation: Since x1=2, x2=5, x3=1, y1=3, y2=4, y3=7 then the answer is [2,3,5,4,1,7].
    @Test("Example 1: nums = [2,5,1,3,4,7], n = 3")
    func example1() {
        #expect(P1470.shuffle([2, 5, 1, 3, 4, 7], 3) == [2, 3, 5, 4, 1, 7])
    }

    /// Example 2:
    /// - Input: `nums = [1,2,3,4,4,3,2,1], n = 4`
    /// - Output: `[1,4,2,3,3,2,4,1]`
    /// - Explanation: Since x1=1, x2=2, x3=3, x4=4, y1=4, y2=3, y3=2, y4=1 then the answer is [1,4,2,3,3,2,4,1].
    @Test("Example 2: nums = [1,2,3,4,4,3,2,1], n = 4")
    func example2() {
        #expect(P1470.shuffle([1, 2, 3, 4, 4, 3, 2, 1], 4) == [1, 4, 2, 3, 3, 2, 4, 1])
    }
}
