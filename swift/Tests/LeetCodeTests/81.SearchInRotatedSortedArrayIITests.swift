import Testing

@testable import LeetCode

/// [81. Search in Rotated Sorted Array II](https://leetcode.com/problems/search-in-rotated-sorted-array-ii/)
@Suite("81. Search in Rotated Sorted Array II")
struct P0081Tests {
    
    /// Example 1:
    /// - Input: `nums = [2,5,6,0,0,1,2], target = 0`
    /// - Output: `true`
    @Test("Target found in rotated array with duplicates")
    func example1() {
        #expect(P0081.search([2,5,6,0,0,1,2], 0) == true)
    }
    
    /// Example 2:
    /// - Input: `nums = [2,5,6,0,0,1,2], target = 3`
    /// - Output: `false`
    @Test("Target not found in rotated array")
    func example2() {
        #expect(P0081.search([2,5,6,0,0,1,2], 3) == false)
    }
    
    @Test("Array with many duplicates")
    func arrayWithDuplicates() {
        #expect(P0081.search([1,0,1,1,1], 0) == true)
    }
    
    /// Edge case: empty array should return false
    @Test("Empty array returns false")
    func emptyArrayReturnsFalse() {
        #expect(P0081.search([], 1) == false)
    }

    /// Duplicate bounds with target equal triggers early return in duplicate-trim loop
    @Test("Duplicate bounds early return true")
    func duplicateBoundsEarlyReturn() {
        #expect(P0081.search([2,2,2], 2) == true)
    }
    /// Force the right-sorted branch to move left boundary (l = m + 1)
    @Test("Right-sorted branch moves left boundary")
    func rightSortedBranchMovesLeftBoundary() {
        // Target is in the right sorted part
        #expect(P0081.search([3,4,5,6,0,1,2,2,2], 1) == true)
    }
}

