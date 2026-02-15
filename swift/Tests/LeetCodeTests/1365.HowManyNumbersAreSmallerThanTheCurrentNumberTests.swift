import Testing

@testable import LeetCode

/// [1365. How Many Numbers Are Smaller Than the Current Number](https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/)
@Suite("1365. How Many Numbers Are Smaller Than the Current Number")
struct P1365Tests {
    
    /// Example 1:
    /// - Input: `nums = [8,1,2,2,3]`
    /// - Output: `[4,0,1,1,3]`
    /// - Explanation:
    ///   For nums[0]=8 there exist four smaller numbers than it (1, 2, 2 and 3).
    ///   For nums[1]=1 does not exist any smaller number than it.
    ///   For nums[2]=2 there exist one smaller number than it (1).
    ///   For nums[3]=2 there exist one smaller number than it (1).
    ///   For nums[4]=3 there exist three smaller numbers than it (1, 2 and 2).
    @Test("Basic example")
    func example1() {
        #expect(P1365.smallerNumbersThanCurrent([8,1,2,2,3]) == [4,0,1,1,3])
    }
    
    /// Example 1:
    /// - Input: `nums = [6,5,4,8]`
    /// - Output: `[2,1,0,3]`
    @Test("Descending input")
    func example2() {
        #expect(P1365.smallerNumbersThanCurrent([6,5,4,8]) == [2,1,0,3])
    }
    
    /// Example 1:
    /// - Input: `nums = [7,7,7,7]`
    /// - Output: `nums = [7,7,7,7]`
    @Test("All equal elements")
    func example3() {
        #expect(P1365.smallerNumbersThanCurrent([7,7,7,7]) == [0,0,0,0])
    }
}
