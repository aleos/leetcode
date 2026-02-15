import Testing

@testable import LeetCode

/// [852. Peak Index in a Mountain Array](https://leetcode.com/problems/peak-index-in-a-mountain-array/)
@Suite("852. Peak Index in a Mountain Array")
struct P0852Tests {
    
    /// Example 1:
    /// - Input: `arr = [0,1,0]`
    /// - Output: `1`
    @Test("3-element mountain")
    func example1() {
        #expect(P0852.peakIndexInMountainArray([0,1,0]) == 1)
    }
    
    /// Example 2:
    /// - Input: `arr = [0,2,1,0]`
    /// - Output: `1`
    @Test("4-element mountain")
    func example2() {
        #expect(P0852.peakIndexInMountainArray([0,2,1,0]) == 1)
    }
    
    /// Example 3:
    /// - Input: `arr = [0,10,5,2]`
    /// - Output: `1`
    @Test("Larger peak value")
    func example3() {
        #expect(P0852.peakIndexInMountainArray([0,10,5,2]) == 1)
    }
    
    @Test("Additional test case")
    func additionalCase() {
        #expect(P0852.peakIndexInMountainArray([3,5,3,2,0]) == 1)
    }
}

