import Testing

@testable import LeetCode

/// [518. Coin Change II](https://leetcode.com/problems/coin-change-ii/)
@Suite("518. Coin Change II")
struct P0518Tests {
    
    /// ## Example 1:
    ///     Input: amount = 5, coins = [1,2,5]
    ///     Output: 4
    ///     Explanation: there are four ways to make up the amount:
    ///     5=5
    ///     5=2+2+1
    ///     5=2+1+1+1
    ///     5=1+1+1+1+1
    @Test("Four ways to make amount 5")
    func example1() {
        #expect(P0518.change(5, [1,2,5]) == 4)
    }
    
    /// ## Example 2:
    ///     Input: amount = 3, coins = [2]
    ///     Output: 0
    ///     Explanation: the amount of 3 cannot be made up just with coins of 2.
    @Test("Amount cannot be made with available coins")
    func example2() {
        #expect(P0518.change(3, [2]) == 0)
    }
    
    /// ## Example 3:
    ///     Input: amount = 10, coins = [10]
    ///     Output: 1
    @Test("Exact match with single coin")
    func example3() {
        #expect(P0518.change(10, [10]) == 1)
    }
    
    /// Edge case: zero amount with coins should return 1
    @Test("Zero amount with coins returns 1")
    func zeroAmountWithCoins() {
        #expect(P0518.change(0, [5]) == 1)
    }
    
    /// First coin greater than amount triggers early break and yields 0 combinations
    @Test("First coin greater than amount returns 0")
    func firstCoinGreaterThanAmount() {
        #expect(P0518.change(3, [5]) == 0)
    }
    
    @Test("Lots of coins", .disabled("Fails in Debug due to recursion depth"))
    func lotsOfCoins() async throws {
        let coins = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74,76,78,80,82,84,86,88,90,92,94,96,98,100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,168,170,172,174,176,178,180,182,184,186,188,190,192,194,196,198,200,202,204,206,208,210,212,214,216,218,220,222,224,226,228,230,232,234,236,238,240,242,244,246,248,250,252,254,256,258,260,262,264,266,268,270,272,274,276,278,280,282,284,286,288,290,292,294,296,298,300,302,304,306,308,310,312,314,316,318,320,322,324,326,328,330,332,334,336,338,340,342,344,346,348,350,352,354,356,358,360,362,364,366,368,370,372,374,376,378,380,382,384,386,388,390,392,394,396,398,400,402,404,406,408,410,412,414,416,418,420,422,424,426,428,430,432,434,436,438,440,442,444,446,448,450,452,454,456,458,460,462,464,466,468,470,472,474,476,478,480,482,484,486,488,490,492,494,496,498,500,502,504,506,508,510,512,514,516,518,520,522,524,526,528,530,532,534,536,538,540,542,544,546,548,550,552,554,556,558,560,562,564,566,568,570,572,574,576,578,580,582,584,586,588,780,936,1170,1560,2340,4680]
        #expect(P0518.change(4681, coins) == 0)
    }
}

