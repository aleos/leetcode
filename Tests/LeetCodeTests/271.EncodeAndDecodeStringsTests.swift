//
//  271.EncodeAndDecodeStringsTests.swift
//  
//
//  Created by Alexander Ostrovsky on 8/8/2023.
//

import XCTest

@testable import LeetCode

/// [271. Encode and Decode Strings](https://leetcode.com/problems/encode-and-decode-strings/)
///
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
///
/// **Example 2**:
///
///     Input: dummy_input = [""]
///     Output: [""]
///
///
/// **Constraints**:
///
/// - `1 <= strs.length <= 200`
/// - `0 <= strs[i].length <= 200`
/// - `strs[i]` contains any possible characters out of `256` valid ASCII characters.
final class EncodeAndDecodeStringsTests: XCTestCase {
    
    let solution = EncodeAndDecodeStrings()
    
    func testExample1() {
        XCTAssertEqual(solution.decode(solution.encode(["Hello","World"])), ["Hello","World"])
    }
    
    func testExample2() {
        XCTAssertEqual(solution.decode(solution.encode([""])), [""])
    }
}
