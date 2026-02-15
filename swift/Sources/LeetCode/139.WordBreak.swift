/// Word Break
///
/// Given a string `s` and a dictionary of strings `wordDict`, return `true` if `s` can be segmented into a space-separated sequence of one or more dictionary words.
///
/// Note that the same word in the dictionary may be reused multiple times in the segmentation.
///
/// **Difficulty:** Medium
///
/// **Topics:** Array, Hash Table, String, Dynamic Programming, Trie, Memoization
///
/// - Precondition:
///   - `1 <= s.length <= 300`
///   - `1 <= wordDict.length <= 1000`
///   - `1 <= wordDict[i].length <= 20`
///   - `s` and `wordDict[i]` consist of only lowercase English letters.
///   - All the strings of `wordDict` are **unique**.
///
/// - SeeAlso: [139. Word Break](https://leetcode.com/problems/word-break/)
public enum P0139 {
    
    /// - Complexity:
    ///   **Time**: O(*n*² × *m*), where *n* is the length of string s and *m* is the average word length,\
    ///   **Space**: O(*n*), where *n* is the length of string `s`.
    public static func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        guard !s.isEmpty else { return true }
        
        let wordSet = Set(wordDict)
        var seen = Set<String.Index>()
        
        var context = [s.startIndex]
        
        while let start = context.popLast() {
            var end = start
            while end < s.endIndex {
                end = s.index(after: end)
                guard !seen.contains(end) else { continue }
                if wordSet.contains(String(s[start..<end])) {
                    guard end != s.endIndex else { return true }
                    context.append(end)
                    seen.insert(end)
                }
            }
        }
        return false
    }
}
