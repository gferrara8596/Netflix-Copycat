//
//  ComingSoonMoviesTableViewCell.swift
//  Netflix2
//
//  Created by Giuseppe Ferrara on 09/12/2019.
//  Copyright © 2019 Giuseppe Ferrara. All rights reserved.
//

import UIKit

class ComingSoonMoviesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var comingSoonCollection: UICollectionView!
    
    var movieApi = FakeApi.getApi()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        comingSoonCollection.delegate = self
        comingSoonCollection.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension ComingSoonMoviesTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieApi.movieFirstCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "comingSoonMovie", for: indexPath) as! ComingSoonMovieCollectionViewCell
        
        
        cell.movieImage.image = movieApi.movieFirstCollection[indexPath.row].image
        cell.movieImage.layer.cornerRadius = cell.movieImage.frame.size.height / 2
        cell.movieImage.layer.borderWidth = 1
        cell.movieImage.layer.masksToBounds = false
        cell.movieImage.layer.borderColor = UIColor.black.cgColor
        cell.movieImage.clipsToBounds = true
        cell.movieLink = movieApi.getMovies()[indexPath.row].url
        
        return cell
        
    }
}
