import Testing

@testable import LeetCode

/// [33. Search in Rotated Sorted Array](https://leetcode.com/problems/search-in-rotated-sorted-array/)
@Suite("33. Search in Rotated Sorted Array")
struct P0033Tests {
    
    /// Example 1:
    /// - Input: `nums = [4,5,6,7,0,1,2], target = 0`
    /// - Output: `4`
    @Test("Target found")
    func example1() {
        #expect(P0033.search([4,5,6,7,0,1,2], 0) == 4)
    }
    
    /// Example 2:
    /// - Input: `nums = [4,5,6,7,0,1,2], target = 3`
    /// - Output: `-1`
    @Test("Target not found")
    func example2() {
        #expect(P0033.search([4,5,6,7,0,1,2], 3) == -1)
    }
    
    /// Example 3:
    /// - Input: `nums = [1], target = 0`
    /// - Output: `-1`
    @Test("Single element, not found")
    func example3() {
        #expect(P0033.search([1], 0) == -1)
    }
    
    @Test("Additional test cases")
    func additionalCases() {
        #expect(P0033.search([4,5,6,7,0,1,2], 1) == 5)
        #expect(P0033.search([4,5,6,7,8,1,2,3], 8) == 4)
        #expect(P0033.search([5,1,2,3,4], 1) == 1)
    }
    
    @Test("Target in right-sorted half")
    func rightSortedBranchMovesLeft() {
        // Target is in the right sorted part
        #expect(P0033.search([6,7,0,1,2,3,4,5], 3) == 5)
    }
}

