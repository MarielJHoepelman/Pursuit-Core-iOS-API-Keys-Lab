//
//  ArtistModel.swift
//  API_Key-Lab
//
//  Created by Mariel Hoepelman on 9/9/19.
//  Copyright © 2019 Mariel Hoepelman. All rights reserved.
//

import Foundation


struct ArtistsWrapper: Codable {
    let message: Message
}

struct Message: Codable {
    let body: Body
}

struct Body: Codable {
    let track_list: [TrackList]
}

struct TrackList: Codable {
    let track: Track
}
    
struct Track: Codable {
    let track_id: Int
    let track_name: String
    let has_lyrics: Int
    let artist_name: String
}
//{
//    "message": {
//        "header": {
//            "status_code": 200,
//            "execute_time": 0.021689891815186,
//            "available": 883
//        },
//        "body": {
//            "track_list": [
//            {
//            "track": {
//            "track_id": 63355951,
//            "track_name": "Shadow Days (In the Style of John Mayer) [Karaoke Version]",
//            "track_name_translation_list": [],
//            "track_rating": 1,
//            "commontrack_id": 32981732,
//            "instrumental": 0,
//            "explicit": 1,
//            "has_lyrics": 1,
//            "has_subtitles": 0,
//            "has_richsync": 0,
//            "num_favourite": 0,
//            "album_id": 18270463,
//            "album_name": "Karaoke Pop Song: May 2012",
//            "artist_id": 24698525,
//            "artist_name": "The Karaoke Studio",
//            "track_share_url": "https://www.musixmatch.com/lyrics/The-Karaoke-Studio/Shadow-Days-In-the-Style-of-John-Mayer-Karaoke-Version?utm_source=application&utm_campaign=api&utm_medium=",
//            "track_edit_url": "https://www.musixmatch.com/lyrics/The-Karaoke-Studio/Shadow-Days-In-the-Style-of-John-Mayer-Karaoke-Version/edit?utm_source=application&utm_campaign=api&utm_medium=",
//            "restricted": 0,
//            "updated_time": "2015-02-19T15:28:07Z",
//            "primary_genres": {
//            "music_genre_list": [
//            {
//            "music_genre": {
//            "music_genre_id": 52,
//            "music_genre_parent_id": 34,
//            "music_genre_name": "Karaoke",
//            "music_genre_name_extended": "Karaoke",
//            "music_genre_vanity": "Karaoke"
//            }
//            }
//            ]
//            }
//            }
//}
