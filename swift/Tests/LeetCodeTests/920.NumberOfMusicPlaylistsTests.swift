import Testing

@testable import LeetCode

/// [920. Number of Music Playlists](https://leetcode.com/problems/number-of-music-playlists/)
@Suite("920. Number of Music Playlists")
struct P0920Tests {
    
    /// Example 1:
    /// - Input: `n = 3, goal = 3, k = 1`
    /// - Output: `6`
    /// - Explanation: There are 6 possible playlists: [1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], and [3, 2, 1].
    @Test("n=3, goal=3, k=1")
    func example1() {
        #expect(P0920.numMusicPlaylists(3, 3, 1) == 6)
    }
    
    /// Example 2:
    /// - Input: `n = 2, goal = 3, k = 0`
    /// - Output: `6`
    /// - Explanation: There are 6 possible playlists: [1, 1, 2], [1, 2, 1], [2, 1, 1], [2, 2, 1], [2, 1, 2], and [1, 2, 2].
    @Test("n=2, goal=3, k=0")
    func example2() {
        #expect(P0920.numMusicPlaylists(2, 3, 0) == 6)
    }
    
    /// Example 3:
    /// - Input: `n = 2, goal = 3, k = 1`
    /// - Output: `2`
    /// - Explanation: There are 2 possible playlists: [1, 2, 1] and [2, 1, 2].
    @Test("n=2, goal=3, k=1")
    func example3() {
        #expect(P0920.numMusicPlaylists(2, 3, 1) == 2)
    }
}

