/// Repeated Substring Pattern
///
/// Given a string `s`, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together.
///
/// **Difficulty:** Easy
///
/// **Topics:** Staff, String, String Matching
///
/// - Precondition:
///   - `1 <= s.length <= 10⁴`
///   - `s` consists of lowercase English letters.
///
/// - SeeAlso: [459. Repeated Substring Pattern](https://leetcode.com/problems/repeated-substring-pattern/)
public enum P0459 {
    
    /// - Complexity:
    ///   **Time**: O(*n*), where *n* is the length of the string,\
    ///   **Space**: O(*n*), where *n* is the length of the string.
    public static func repeatedSubstringPattern(_ s: String) -> Bool {
        let ss = s + s
        return ss[ss.index(after: ss.startIndex)..<ss.index(before: ss.endIndex)].contains(s)
    }
}
