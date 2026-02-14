import Testing

@testable import LeetCode

/// [168. Excel Sheet Column Title](https://leetcode.com/problems/excel-sheet-column-title/)
@Suite("168. Excel Sheet Column Title")
struct P0168Tests {
    
    /// ## Example 1:
    ///     Input: columnNumber = 1
    ///     Output: "A"
    @Test("Column 1 is 'A'")
    func example1() {
        #expect(P0168.convertToTitle(1) == "A")
    }
    
    /// ## Example 2:
    ///     Input: columnNumber = 28
    ///     Output: "AB"
    @Test("Column 28 is 'AB'")
    func example2() {
        #expect(P0168.convertToTitle(28) == "AB")
    }

    /// ## Example 3:
    ///     Input: columnNumber = 701
    ///     Output: "ZY"
    @Test("Column 701 is 'ZY'")
    func example3() {
        #expect(P0168.convertToTitle(701) == "ZY")
    }
}

