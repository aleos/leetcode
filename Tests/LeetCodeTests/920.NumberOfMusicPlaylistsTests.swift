//
//  920.NumberOfMusicPlaylistsTests.swift
//  
//
//  Created by Alexander Ostrovsky on 6/8/2023.
//

import XCTest

@testable import LeetCode

/// [920. Number of Music Playlists](https://leetcode.com/problems/number-of-music-playlists/)
///
/// **Example 1**:
///
///     Input: n = 3, goal = 3, k = 1
///     Output: 6
///     Explanation: There are 6 possible playlists: [1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], and [3, 2, 1].
///
/// **Example 2**:
///
///     Input: n = 2, goal = 3, k = 0
///     Output: 6
///     Explanation: There are 6 possible playlists: [1, 1, 2], [1, 2, 1], [2, 1, 1], [2, 2, 1], [2, 1, 2], and [1, 2, 2].
///
/// **Example 3**:
///
///     Input: n = 2, goal = 3, k = 1
///     Output: 2
///     Explanation: There are 2 possible playlists: [1, 2, 1] and [2, 1, 2].
///
///
/// **Constraints**:
///
/// - `0 <= k < n <= goal <= 100`
final class NumberOfMusicPlaylistsTests: XCTestCase {
    
    func testExample1() {
        XCTAssertEqual(P0920.numMusicPlaylists(3, 3, 1), 6)
    }
    
    func testExample2() {
        XCTAssertEqual(P0920.numMusicPlaylists(2, 3, 0), 6)
    }
    
    func testExample3() {
        XCTAssertEqual(P0920.numMusicPlaylists(2, 3, 1), 2)
    }
}
