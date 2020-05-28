//
//  PlayerViewController.swift
//  Netflix2
//
//  Created by Giuseppe Ferrara on 10/12/2019.
//  Copyright © 2019 Giuseppe Ferrara. All rights reserved.
//

import UIKit
import AVKit

class PlayerViewController: AVPlayerViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player?.play()
        print("player started")
        
        
        
    }
}
