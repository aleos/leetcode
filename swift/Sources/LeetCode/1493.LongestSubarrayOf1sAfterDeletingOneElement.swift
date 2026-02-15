/// Longest Subarray of 1's After Deleting One Element
///
/// Given a binary array `nums`, you should delete one element from it.
///
/// Return *the size of the longest non-empty subarray containing only `1`'s in the resulting array*. Return `0` if there is no such subarray.
///
/// **Difficulty:** Medium
///
/// **Topics:** Staff, Array, Dynamic Programming, Sliding Window, Biweekly Contest 29
///
/// - Precondition:
///   - `1 <= nums.length <= 10⁵`
///   - `nums[i]` is either `0` or `1`.
///
/// - SeeAlso: [1493. Longest Subarray of 1's After Deleting One Element](https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/)
public enum P1493 {
    
    /// - Complexity:
    ///   **Time**: O(*n*), where *n* is the length of the array,\
    ///   **Space**: O(1).
    public static func longestSubarray(_ nums: [Int]) -> Int {
        var lastStart1Index: Int?
        var last0Index: Int?
        
        var longest1sStartIndex: Int?
        var longest1sEndIndex: Int?
        var indexToDelete: Int?
        
        func len(start: Int, end: Int, zero: Int?) -> Int {
            var len = end - start + 1
            if let zero, zero > start && zero < end {
                len -= 1
            }
            return len
        }
        
        func updateLongest(start: Int, end: Int) {
            if let oldLongest1sStartIndex = longest1sStartIndex, let oldLongest1sEndIndex = longest1sEndIndex {
                let oldLen = len(start: oldLongest1sStartIndex, end: oldLongest1sEndIndex, zero: indexToDelete)
                let newLen = len(start: start, end: end, zero: last0Index)
                if newLen > oldLen {
                    longest1sStartIndex = start
                    longest1sEndIndex = end
                    if let last0Index {
                        indexToDelete = last0Index
                    }
                }
            } else {
                // The first found sequence of 1s
                longest1sStartIndex = start
                longest1sEndIndex = end
                if let last0Index {
                    indexToDelete = last0Index
                }
            }
        }
        
        for (i, num) in nums.enumerated() {
            if num == 0 {
                if let last0Index {
                    if let lastStart = lastStart1Index {
                        if last0Index > lastStart {
                            // The second 0. The current sequence is ended.
                            if last0Index == i - 1 {
                                // Previous num is also 0
                                updateLongest(start: lastStart, end: last0Index - 1)
                                lastStart1Index = nil
                            } else {
                                updateLongest(start: lastStart, end: i - 1)
                                lastStart1Index = last0Index + 1
                            }
                        } else {
                            // The first 0 in this 1s sequence. Continue
                        }
                    } else {
                        // More than two 0s in a row
                    }
                } else {
                    // The first 0 in this array
                }
                last0Index = i
            } else {
                if lastStart1Index == nil {
                    lastStart1Index = i
                }
            }
        }
        
        if let lastStart = lastStart1Index {
            if let last0Index, last0Index == nums.count - 1 {
                updateLongest(start: lastStart, end: last0Index - 1)
            } else {
                updateLongest(start: lastStart, end: nums.count - 1)
            }
        }
        
        if let longest1sStartIndex, let longest1sEndIndex {
            let len = len(start: longest1sStartIndex, end: longest1sEndIndex, zero: indexToDelete)
            if indexToDelete != nil {
                return len
            } else {
                return len - 1
            }
        } else {
            return 0
        }
    }
}
