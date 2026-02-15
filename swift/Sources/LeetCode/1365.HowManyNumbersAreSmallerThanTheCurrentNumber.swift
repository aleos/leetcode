/// How Many Numbers Are Smaller Than the Current Number
///
/// Given the array `nums`, for each `nums[i]` find out how many numbers in the array are smaller than it. That is, for each `nums[i]` you have to count the number of valid `j`'s such that `j != i` and `nums[j] < nums[i]`.
///
/// Return the answer in an array.
///
/// **Difficulty:** Easy
///
/// **Topics:** Mid Level, Array, Hash Table, Sorting, Counting Sort, Weekly Contest 178
///
/// - Precondition:
///   - `2 <= nums.length <= 500`
///   - `0 <= nums[i] <= 100`
///
/// - SeeAlso: [1365. How Many Numbers Are Smaller Than the Current Number](https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/)
public enum P1365 {
    /// - Complexity:
    ///   **Time**: O(*n²*), where *n* is length of **nums**,\
    ///   **Space**: O(*n*), where *n* is length of **nums**.
    public static func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var result: [Int] = .init(repeating: 0, count: nums.count)
        var memo: [Int: Int] = [:]
        for i in 0..<nums.count {
            if let precomputed = memo[nums[i]] {
                result[i] = precomputed
            } else {
                var count = 0
                for j in 0..<nums.count where i != j {
                    if nums[j] < nums[i] {
                        count += 1
                    }
                }
                memo[nums[i]] = count
                result[i] = count
            }
        }
        return result
    }
}
