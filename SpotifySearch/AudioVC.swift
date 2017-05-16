//
//  AudioVC.swift
//  SpotifySearch
//
//  Created by Hyung Jip Moon on 2017-05-15.
//  Copyright © 2017 leomoon. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class AudioVC : UIViewController {
    
    var image = UIImage()
    var mainSongTitle = String()
    var mainPreviewURL = String()
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var songTitleLabel: UILabel!
    @IBOutlet weak var playPauseButton: UIButton!
    override func viewDidLoad() {
        songTitleLabel.text = mainSongTitle
        backgroundImageView.image = image
        mainImageView.image = image
        
        downloadFileFromURL(url: URL(string: mainPreviewURL)!)
        playPauseButton.setTitle("Pause", for: .normal)
    }
    
    func downloadFileFromURL(url: URL) {
        var downloadTask = URLSessionDownloadTask()
        downloadTask = URLSession.shared.downloadTask(with: url, completionHandler: {
            customURL, response, error in
            
            self.play(url: customURL!)
        })
        
        downloadTask.resume()
    }
    
    func play(url: URL) {
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
            player.play()
        }
        catch{
            
        }
    }
    @IBAction func playPauseButtonTapped(_ sender: Any) {
        
        if player.isPlaying {
            player.pause()
            playPauseButton.setTitle("Play", for: .normal)
        }
        else {
            player.play()
//            downloadFileFromURL(url: URL(string: mainPreviewURL)!)
            playPauseButton.setTitle("Pause", for: .normal)
            
        }
    }
}
