import Foundation

/// Encode and Decode Strings
///
/// Design an algorithm to encode a list of strings to a string. The encoded string is then sent over the network and is decoded back to the original list of strings.
///
/// Machine 1 (sender) has the function:
///
///     string encode(vector<string> strs) {
///       // ... your code
///       return encoded_string;
///     }
///
/// Machine 2 (receiver) has the function:
///
///     vector<string> decode(string s) {
///       //... your code
///       return strs;
///     }
///
/// So Machine 1 does:
///
///     string encoded_string = encode(strs);
///
/// and Machine 2 does:
///
///     vector<string> strs2 = decode(encoded_string);
///
/// `strs2` in Machine 2 should be the same as `strs` in Machine 1.
///
/// Implement the `encode` and `decode` methods.
///
/// You are not allowed to solve the problem using any serialize methods (such as `eval`).
///
/// Follow up: Could you write a generalized algorithm to work on any possible set of characters?
///
/// **Difficulty:** Medium
///
/// **Topics:** Array, String, Design
///
/// - Precondition:
///   - `1 <= strs.length <= 200`
///   - `0 <= strs[i].length <= 200`
///   - `strs[i]` contains any possible characters out of `256` valid ASCII characters.
///
/// - SeeAlso: [271. Encode and Decode Strings](https://leetcode.com/problems/encode-and-decode-strings/)
public enum P0271 {
    
    /// Separator is `\,`
    /// - Parameter strs: An array of strings to encode.
    /// - Returns: An encoded string representation.
    /// - Complexity:
    ///   **Time**: O(*n* × *m*), where *n* is the number of strings and *m* is the average string length,\
    ///   **Space**: O(1).
    public static func encode(_ strs: [String]) -> String {
        strs
            .map({ $0.replacingOccurrences(of: #"\"#, with: #"\\"#) })
            .joined(separator: #"\,"#)
    }
    
    /// Separator is `\,`
    /// - Parameter s: An encoded string.
    /// - Returns: An array of decoded strings.
    /// - Complexity:
    ///   **Time**: O(*n*), where *n* is the length of the encoded string,\
    ///   **Space**: O(*n*), where *n* is the length of the encoded string.
    public static func decode(_ s: String) -> [String] {
        var result: [String] = []
        
        var previous = s.startIndex
        var current = s.startIndex
        var last = s.startIndex
        var currentString = ""
        while current != s.endIndex {
            if s[previous...current] == #"\\"# {
                currentString += s[last..<current]
                current = s.index(after: current) // skip
                last = current
            } else if s[previous...current] == #"\,"# {
                print(s[previous...current])
                currentString += s[last..<previous]
                result.append(currentString)
                currentString = ""
                last = s.index(after: current)
            }
            
            previous = current
            current = s.index(previous, offsetBy: 1, limitedBy: s.endIndex) ?? s.endIndex
        }
        currentString += s[last..<s.endIndex]
        result.append(currentString)
        return result
    }
}
