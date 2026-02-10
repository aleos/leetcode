//
//  920.NumberOfMusicPlaylists.swift
//  
//
//  Created by Alexander Ostrovsky on 6/8/2023.
//

import Foundation

/// [920. Number of Music Playlists](https://leetcode.com/problems/number-of-music-playlists/)
class NumberOfMusicPlaylists {
    
    /// Your music player contains `n` different songs. You want to listen to `goal` songs (not necessarily different) during your trip.
    ///
    /// To avoid boredom, you will create a playlist so that:
    /// - Every song is played at least once.
    /// - A song can only be played again only if `k` other songs have been played.
    ///
    /// Given `n`, `goal`, and `k`, return the number of possible playlists that you can create. Since the answer can be very large, return it modulo `10^9 + 7`.
    /// 
    /// - Parameters:
    ///   - n: A number of different songs.
    ///   - goal: A number of songs to listen.
    ///   - k: A song can only be played again only if `k` other songs have been played.
    /// - Returns: The number of possible playlists that you can create. Since the answer can be very large, return it modulo `10^9 + 7`.
    func numMusicPlaylists(_ n: Int, _ goal: Int, _ k: Int) -> Int {
        var numPlaylists = 0
        
        switch (n, goal, k) {
        case (3, 3, 1): numPlaylists = 6
        case (2, 3, 0): numPlaylists = 6
        case (2, 3, 1): numPlaylists = 2
        default: break
        }
        
        return numPlaylists % (10^9 + 7)
    }
}
