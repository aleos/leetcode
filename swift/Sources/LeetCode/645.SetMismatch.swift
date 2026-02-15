/// Set Mismatch
///
/// You have a set of integers `s`, which originally contains all the numbers from `1` to `n`. Unfortunately, due to some error, one of the numbers in `s` got duplicated to another number in the set, which results in repetition of one number and loss of another number.
///
/// You are given an integer array `nums` representing the data status of this set after the error.
///
/// Find the number that occurs twice and the number that is missing and return them in the form of an array `[duplicate, missing]`.
///
/// **Difficulty:** Easy
///
/// **Topics:** Array, Hash Table, Bit Manipulation, Sorting
///
/// - Precondition:
///   - `2 <= nums.length <= 10^4`
///   - `1 <= nums[i] <= 10^4`
///
/// - SeeAlso: [645. Set Mismatch](https://leetcode.com/problems/set-mismatch/)
public enum P0645 {
    /// - Parameter nums: The array representing the set with one duplicate and one missing number.
    /// - Returns: An array `[duplicate, missing]`.
    /// - Complexity:
    ///   **Time**: O(*n*), where *n* is the length of the array,\
    ///   **Space**: O(*n*).
    public static func findErrorNums(_ nums: [Int]) -> [Int] {
        var set = Set<Int>(1...nums.count)
        var duplicate = 0
        for num in nums {
            guard let _ = set.remove(num) else {
                duplicate = num
                continue
            }
        }
        return [duplicate, set.first ?? 0]
    }

}
