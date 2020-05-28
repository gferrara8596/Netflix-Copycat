//
//  Movie.swift
//  Netflix2
//
//  Created by Giuseppe Ferrara on 06/12/2019.
//  Copyright © 2019 Giuseppe Ferrara. All rights reserved.
//

import UIKit

class Movie: NSObject {
    
    var title: String?
    var image: UIImage?
    var attributes: String?
    var plot: String?
    var url: String?
    
    init(movieTitle: String, image: UIImage, attributes: String, plot: String, url: String) {
        self.title = movieTitle
        self.image = image
        self.attributes = attributes
        self.plot = plot
        self.url = url
    }
    
    init(movieTitle: String, image: UIImage, attributes: String, plot: String) {
           self.title = movieTitle
           self.image = image
           self.attributes = attributes
           self.plot = plot
       }
    
    

}
