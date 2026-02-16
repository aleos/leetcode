/// Reorganize String
///
/// Given a string `s`, rearrange the characters of `s` so that any two adjacent characters are not the same.
///
/// Return *any possible rearrangement of `s` or return `""` if not possible*.
///
/// **Difficulty:** Medium
///
/// **Topics:** Staff, Hash Table, String, Greedy, Sorting, Heap (Priority Queue), Counting, Weekly Contest 68
///
/// - Precondition:
///   - `1 <= s.length <= 500`
///   - `s` consists of lowercase English letters.
///
/// - SeeAlso: [767. Reorganize String](https://leetcode.com/problems/reorganize-string/)
public enum P0767 {
    
    /// - Complexity:
    ///   **Time**: O(*n*), where *n* is the length of the string,\
    ///   **Space**: O(1).
    public static func reorganizeString(_ s: String) -> String {
        precondition(!s.isEmpty, "String must not be empty")
        
        let length = s.count
        let frequences = s.reduce(into: [:]) { f, char in f[char, default: 0] += 1 }
        let maxFreq = frequences.max(by: { $0.value < $1.value })!
        guard maxFreq.value <= (length + 1) / 2 else { return "" }
        
        var result = Array(s)
        var i = 0
        for _ in 0..<maxFreq.value {
            result[i] = maxFreq.key
            i += 2
        }
        for letter in frequences where letter.key != maxFreq.key {
            for _ in 0..<letter.value {
                if i >= length {
                    i = 1
                }
                result[i] = letter.key
                i += 2
            }
        }
        
        return String(result)
    }
}
