//
//  271.EncodeAndDecodeStringsTests.swift
//  LeetCode
//
//  Created by Alexander Ostrovsky on 8/8/2023.
//

import Testing

@testable import LeetCode

/// [271. Encode and Decode Strings](https://leetcode.com/problems/encode-and-decode-strings/)
///
/// **Constraints**:
///
/// - `1 <= strs.length <= 200`
/// - `0 <= strs[i].length <= 200`
/// - `strs[i]` contains any possible characters out of `256` valid ASCII characters.
@Suite("Encode and Decode Strings")
struct EncodeAndDecodeStringsTests {
    
    /// **Example 1**:
    ///
    ///     Input: dummy_input = ["Hello","World"]
    ///     Output: ["Hello","World"]
    ///     Explanation:
    ///     Machine 1:
    ///     Codec encoder = new Codec();
    ///     String msg = encoder.encode(strs);
    ///     Machine 1 ---msg---> Machine 2
    ///
    ///     Machine 2:
    ///     Codec decoder = new Codec();
    ///     String[] strs = decoder.decode(msg);
    @Test("Encode and decode multiple strings")
    func example1() {
        #expect(P0271.decode(P0271.encode(["Hello","World"])) == ["Hello","World"])
    }
    
    /// **Example 2**:
    ///
    ///     Input: dummy_input = [""]
    ///     Output: [""]
    @Test("Encode and decode empty string")
    func example2() {
        #expect(P0271.decode(P0271.encode([""])) == [""])
    }
}
