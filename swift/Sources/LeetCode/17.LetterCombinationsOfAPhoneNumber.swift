/// Letter Combinations of a Phone Number
///
/// Given a string containing digits from `2-9` inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.
///
/// A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.
/// ![mapping](https://assets.leetcode.com/uploads/2022/03/15/1200px-telephone-keypad2svg.png)
///
/// **Difficulty:** Medium
///
/// **Topics:** Hash Table, String, Backtracking
///
/// - Precondition:
///   - `0 <= digits.length <= 4`
///   - `digits[i]` is a digit in the range `['2', '9']`.
///
/// - SeeAlso: [17. Letter Combinations of a Phone Number](https://leetcode.com/problems/letter-combinations-of-a-phone-number/)
public enum P0017 {
    private static let digitsMapping: [Character: String] = ["2": "abc", "3": "def", "4": "ghi", "5": "jkl", "6": "mno", "7": "pqrs", "8": "tuv", "9": "wxyz"]
    
    /// - Parameter digits: A string of digits from 2 to 9.
    /// - Returns: All possible letter combinations that the number could represent in any order.
    /// - Complexity:
    ///   **Time**: O(*4^n*), where *n* is the length of the input digits string,\
    ///   **Space**: O(*n*), where *n* is the length of the input digits string.
    public static func letterCombinations(_ digits: String) -> [String] {
        var combinations: [String] = []
        if let lastDigit = digits.first {
            combinations = digitsMapping[lastDigit]?.flatMap({ [String($0)] }) ?? []
        }
        for d in digits.dropFirst() {
            combinations = combinations.flatMap { combination in
                digitsMapping[d]?.map({ combination + String($0) }) ?? []
            }
        }
        return combinations
    }
}
