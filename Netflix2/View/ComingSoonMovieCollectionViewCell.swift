//
//  ComingSoonMovieCollectionViewCell.swift
//  Netflix2
//
//  Created by Giuseppe Ferrara on 09/12/2019.
//  Copyright © 2019 Giuseppe Ferrara. All rights reserved.
//

import UIKit

class ComingSoonMovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieImage: UIImageView!
    
    var movieLink: String?
    
    
    @IBAction func movieImagePressed(_ sender: UIButton) {
        let name = Notification.Name("playButtonPressed")
        
        var notification = Notification(name: name)
        notification.object = URL(string: movieLink!)
        
        NotificationCenter.default.post(notification)
        
    }
    
    
}
