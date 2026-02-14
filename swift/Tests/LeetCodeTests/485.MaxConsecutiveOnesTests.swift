import Testing

@testable import LeetCode

/// [485. Max Consecutive Ones](https://leetcode.com/problems/max-consecutive-ones/)
@Suite("485. Max Consecutive Ones")
struct P0485Tests {
    
    /// ## Example 1:
    ///     Input: nums = [1,1,0,1,1,1]
    ///     Output: 3
    ///     Explanation: The first two digits or the last three digits are consecutive 1s. The /// maximum number of consecutive 1s is 3.
    @Test("Find maximum of 3 consecutive ones")
    func example1() {
        #expect(P0485.findMaxConsecutiveOnes([1,1,0,1,1,1]) == 3)
    }
    
    /// ## Example 2:
    ///     Input: nums = [1,0,1,1,0,1]
    ///     Output: 2
    @Test("Find maximum of 2 consecutive ones")
    func example2() {
        #expect(P0485.findMaxConsecutiveOnes([1,0,1,1,0,1]) == 2)
    }
}

