/// Number of Music Playlists
///
/// Your music player contains `n` different songs. You want to listen to `goal` songs (not necessarily different) during your trip.
///
/// To avoid boredom, you will create a playlist so that:
/// - Every song is played at least once.
/// - A song can only be played again only if `k` other songs have been played.
///
/// Given `n`, `goal`, and `k`, return the number of possible playlists that you can create. Since the answer can be very large, return it modulo `10^9 + 7`.
///
/// **Difficulty:** Hard
///
/// **Topics:** Principal, Math, Dynamic Programming, Combinatorics, Weekly Contest 105
///
/// - SeeAlso: [920. Number of Music Playlists](https://leetcode.com/problems/number-of-music-playlists/)
public enum P0920 {
    
    /// - Parameters:
    ///   - n: A number of different songs.
    ///   - goal: A number of songs to listen.
    ///   - k: A song can only be played again only if `k` other songs have been played.
    /// - Returns: The number of possible playlists that you can create. Since the answer can be very large, return it modulo `10^9 + 7`.
    /// - Complexity:
    ///   **Time**: O(*n* × *goal*), where *n* is the number of songs and *goal* is the playlist length,\
    ///   **Space**: O(*n* × *goal*), where *n* is the number of songs and *goal* is the playlist length.
    public static func numMusicPlaylists(_ n: Int, _ goal: Int, _ k: Int) -> Int {
        let mod = Int(1e9 + 7)
        
        // songs "n" to form the "goal' playlist .
        var dp = [[Int]](repeating: .init(repeating: 0, count: goal + 1), count: n + 1)
        dp[0][0] = 1
        
        for l in 1...goal {
            for s in 1...min(n, l) {
                // new song
                dp[s][l] = dp[s - 1][l - 1] * (n - (s - 1))
                // adding old songs, even though "k" should not be selected
                dp[s][l] += dp[s][l - 1] * max(s - k, 0) % mod
                dp[s][l] %= mod
            }
        }
        return dp[n][goal]
        
    }
}
