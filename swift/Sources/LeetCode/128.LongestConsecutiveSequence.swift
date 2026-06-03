/// Longest Consecutive Sequence
///
/// Given an unsorted array of integers `nums`, return the length of the longest consecutive elements sequence.
///
/// You must write an algorithm that runs in O(*n*) time.
///
/// **Difficulty:** Medium
///
/// **Topics:** Array, Hash Table, Union Find
///
/// - Precondition:
///   - `0 <= nums.length <= 10⁵`
///   - `-10⁹ <= nums[i] <= 10⁹`
///
/// - SeeAlso: [128. Longest Consecutive Sequence](https://leetcode.com/problems/longest-consecutive-sequence/)
public enum P0128 {
    /// - Complexity:
    ///   **Time**: O(*n* log *n*), where *n* is the length of `nums`, dominated by sorting,\
    ///   **Space**: O(*n*) for the sorted copy.
    public static func longestConsecutive(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        let nums = nums.sorted()
        var length = 1
        var maxLength = 1
        for i in 1..<nums.count {
            let diff = nums[i] - nums[i - 1]
            guard diff != 0 else { continue }
            if nums[i] - nums[i - 1] == 1 {
                length += 1
            } else {
                maxLength = max(maxLength, length)
                length = 1
            }
        }
        return max(maxLength, length)
    }
}
