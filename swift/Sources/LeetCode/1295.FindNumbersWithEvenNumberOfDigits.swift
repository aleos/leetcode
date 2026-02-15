/// Find Numbers with Even Number of Digits
///
/// Given an array `nums` of integers, return how many of them contain an **even number** of digits.
///
/// **Difficulty:** Easy
///
/// **Topics:** Mid Level, Array, Math, Weekly Contest 168
///
/// - Precondition:
///   - `1 <= nums.length <= 500`
///   - `1 <= nums[i] <= 10⁵`
///
/// - SeeAlso: [1295. Find Numbers with Even Number of Digits](https://leetcode.com/problems/find-numbers-with-even-number-of-digits/)
public enum P1295 {
    
    /// - Complexity:
    ///   **Time**: O(*n* × *d*), where *n* is the number of integers and *d* is the average number of digits,\
    ///   **Space**: O(1).
    public static func findNumbers(_ nums: [Int]) -> Int {
        nums.reduce(0) { partialResult, num in
            isEven(digits(in: num)) ? partialResult + 1 : partialResult
        }
    }
    
    /// A number of digits
    ///
    /// - Parameter num: A number
    /// - Returns: A number of digits of `num`
    private static func digits(in num: Int) -> Int {
        var num = num
        var digitsNumber = 0
        repeat {
            num /= 10
            digitsNumber += 1
        } while num != 0
        return digitsNumber
    }
    
    private static func isEven(_ num: Int) -> Bool { num % 2 == 0 }
}
