//
//  ArtistSearchViewController.swift
//  API_Key-Lab
//
//  Created by Mariel Hoepelman on 9/9/19.
//  Copyright © 2019 Mariel Hoepelman. All rights reserved.
//

import UIKit

class ArtistSearchViewController: UIViewController {
    
    @IBOutlet weak var ArtistsTableView: UITableView!
    
    var artists = [TrackList]() {
        didSet {
            ArtistsTableView.reloadData()
            print(artists.count)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        ArtistsTableView.dataSource = self
        ArtistsTableView.delegate = self
        loadData()

    }

    private func loadData() {
         let url = "https://api.musixmatch.com/ws/1.1/track.search?q=john%20mayer&apikey=32df5b935b0a457b57fb134f46967ebc&f_has_lyrics=true"
        
        ArtistAPIHelper.shared.getArtists(url: url) {(result) in
            DispatchQueue.main.async {
                switch result {
                case .success(let artistsFromServer):
                    self.artists = artistsFromServer
                case .failure(let error) :
                    print(error)
                }
            }
        }
    }
}

extension ArtistSearchViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ArtistsTableView.dequeueReusableCell(withIdentifier: "ArtistSongsDVC")
        cell?.textLabel?.text = artists[indexPath.row].track.artist_name
        return cell!
    }

}

extension ArtistSearchViewController: UITableViewDelegate {
    
}