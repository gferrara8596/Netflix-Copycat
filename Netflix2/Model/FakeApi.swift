//
//  FakeApi.swift
//  Netflix2
//
//  Created by Giuseppe Ferrara on 09/12/2019.
//  Copyright © 2019 Giuseppe Ferrara. All rights reserved.
//

import Foundation

class FakeApi {
    private static let singleton = FakeApi()
    
    var mainMovie: Movie = Movie(movieTitle: "",
                                 image: #imageLiteral(resourceName: "image1.jpg"),
                                 attributes: "Action -- Fantasy -- Comedy -- Crime",
                                 plot: "...",
                                 url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov")
    
    var movieFirstCollection: [Movie] = [Movie(movieTitle: "",
                                                image: #imageLiteral(resourceName: "image2.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov"),
                                          Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image3.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov"),
                                          Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image4.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov"),
                                          Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image5.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov"),
                                          Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image6.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov"),
                                          
                                          Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image7.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov"),
                                          
                                          Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image8.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov"),
                                          
                                          Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image9.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov"),
                                          
                                          Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image10.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov")
        
    ]
    
    var movieSecondCollection: [Movie] = [Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image11.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov"),
                                          Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image12.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov"),
                                          Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image13.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov"),
                                          Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image14.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov"),
                                          Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image15.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov"),
                                          
                                          Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image16.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov"),
                                          
                                          Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image17.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov"),
                                          
                                          Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image18.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov"),
                                          
                                          Movie(movieTitle: "Il Cavaliere Oscuro il Ritorno",
                                                image: #imageLiteral(resourceName: "image19.jpg"),
                                                attributes: "Action -- Fantasy",
                                                plot: "...",
                                                url: "https://movietrailers.apple.com/movies/independent/transcendents/transcendents-trailer-1_h1080p.mov")
        
    ]
    
    private init() {
        
    }
    
    static func getApi() -> FakeApi {
        return singleton
    }
    
    func getMovies() -> [Movie]{
        return movieFirstCollection
    }
    
    func getTotalRows() -> Int {
        return 12
    }
    
}
