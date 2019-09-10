//
//  ArtistsAPIHelper.swift
//  API_Key-Lab
//
//  Created by Mariel Hoepelman on 9/9/19.
//  Copyright © 2019 Mariel Hoepelman. All rights reserved.
//

import Foundation

class ArtistAPIHelper {
    private init () {}
    
    static let shared = ArtistAPIHelper()
    
    func getArtists(url: String, completionHandler: @escaping (Result<[TrackList], AppError>) -> ()) {
        
        NetworkManager.shared.fetchData(urlString: url) { (result) in
            switch result {
            case .failure(let error):
                completionHandler(.failure(.badUrl))
            case .success(let data):
                do {
                    let artistInfo = try JSONDecoder().decode(ArtistsWrapper.self, from: data)
                    completionHandler(.success(artistInfo.message.body.track_list))
                } catch {
                    completionHandler(.failure(.noDataError))
                    
                }
            }
        }
    }
}
