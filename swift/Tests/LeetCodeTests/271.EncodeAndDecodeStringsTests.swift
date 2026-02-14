import Testing

@testable import LeetCode

/// [271. Encode and Decode Strings](https://leetcode.com/problems/encode-and-decode-strings/)
@Suite("271. Encode and Decode Strings")
struct P0271Tests {
    
    /// Example 1:
    /// - Input: `dummy_input = ["Hello","World"]`
    /// - Output: `["Hello","World"]`
    /// - Explanation:
    ///   Machine 1:
    ///   Codec encoder = new Codec();
    ///   String msg = encoder.encode(strs);
    ///   Machine 1 ---msg---> Machine 2
    ///
    ///   Machine 2:
    ///   Codec decoder = new Codec();
    ///   String[] strs = decoder.decode(msg);
    @Test("Encode and decode multiple strings")
    func example1() {
        #expect(P0271.decode(P0271.encode(["Hello","World"])) == ["Hello","World"])
    }
    
    /// Example 2:
    /// - Input: `dummy_input = [""]`
    /// - Output: `[""]`
    @Test("Encode and decode empty string")
    func example2() {
        #expect(P0271.decode(P0271.encode([""])) == [""])
    }
    
    @Test("Roundtrip with backslash in string")
    func backslashInString() {
        #expect(P0271.decode(P0271.encode(["a\\b","c"])) == ["a\\b","c"])
    }

    @Test("Roundtrip with comma inside string")
    func commaInsideString() {
        #expect(P0271.decode(P0271.encode(["a,b","c"])) == ["a,b","c"])
    }
    
    @Test("Roundtrip with literal separator sequence in string")
    func literalSeparatorSequenceInString() {
        #expect(P0271.decode(P0271.encode(["\\,","x\\,y","\\"])) == ["\\,","x\\,y","\\"])
    }
}

