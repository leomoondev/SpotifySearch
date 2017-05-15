//
//  AudioVC.swift
//  SpotifySearch
//
//  Created by Hyung Jip Moon on 2017-05-15.
//  Copyright © 2017 leomoon. All rights reserved.
//

import Foundation
import UIKit

class AudioVC : UIViewController {
    
    var image = UIImage()
    var mainSongTitle = String()
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var songTitleLabel: UILabel!
    override func viewDidLoad() {
        songTitleLabel.text = mainSongTitle
        backgroundImageView.image = image
        mainImageView.image = image
    }
}
