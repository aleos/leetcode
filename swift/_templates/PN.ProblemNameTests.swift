import Testing

@testable import LeetCode

/// [<#PN#>. <#Problem Name#>](https://leetcode.com/problems/<#problem-slug#>/)
@Suite("<#NNNN#>. <#Problem Name#>")
struct P<#NNNN#>Tests {

    /// ## Example 1:
    /// - Input: `<#Input#>`
    /// - Output: `<#Output#>`
    /// - Explanation: <#Explanation#>
    @Test("Example 1: <#Scenario#>")
    func example1() {
        #expect(P<#NNNN#>.<#function#>(<#Input#>) == <#Output#>)
    }

    /// ## Example 2:
    /// - Input: `<#Input#>`
    /// - Output: `<#Output#>`
    /// - Explanation: <#Explanation#>
    @Test("Example 2: <#Scenario#>")
    func example2() {
        #expect(P<#NNNN#>.<#function#>(<#Input#>) == <#Output#>)
    }

}
