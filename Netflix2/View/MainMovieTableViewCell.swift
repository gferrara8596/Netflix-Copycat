//
//  MainMovieTableViewCell.swift
//  Netflix2
//
//  Created by Giuseppe Ferrara on 06/12/2019.
//  Copyright © 2019 Giuseppe Ferrara. All rights reserved.
//

import UIKit

class MainMovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mainPlayButton: UIButton!
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var attributes: UILabel!
    
    var movieLink: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        mainPlayButton.layer.cornerRadius = 10 
                
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func playButtonPressed(_ sender: UIButton) {
    
        let name = Notification.Name("playButtonPressed")
        
        var notification = Notification(name: name)
        notification.object = URL(string: movieLink!)
        
        NotificationCenter.default.post(notification)
        
    }
    

    
}


