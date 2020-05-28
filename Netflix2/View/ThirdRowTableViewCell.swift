//
//  ThirdRowTableViewCell.swift
//  Netflix2
//
//  Created by Giuseppe Ferrara on 10/12/2019.
//  Copyright © 2019 Giuseppe Ferrara. All rights reserved.
//

import UIKit
import AVKit

class ThirdRowTableViewCell: UITableViewCell {
    
    let api = FakeApi.getApi()
    let array = 0...(FakeApi.getApi().movieSecondCollection.count-1)
    var mixedArray: [Int]?
    
    @IBOutlet weak var moviesCategoryLabel: UILabel!
    
    @IBOutlet weak var moviesCollection: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        moviesCollection.delegate = self
        moviesCollection.dataSource = self
        
        
        
        mixedArray = array.shuffled()
        
        
        print("array shuffled: \(mixedArray)")
        
        
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}



extension ThirdRowTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return api.movieSecondCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCollectionCell", for: indexPath) as! MovieCollectionViewCell
        
        
        let index = mixedArray?[indexPath.row]
        
        print("index: \(String(describing: index))")
        
        cell.movieImage.image = api.movieSecondCollection[index ?? indexPath.row].image
        cell.movieLink = api.movieSecondCollection[index ?? indexPath.row].url
        
       
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCollectionCell", for: indexPath) as! MovieCollectionViewCell
        
        print("size for movieCell: \(cell.movieImage.frame.size)")
        
        return cell.movieImage.frame.size
        
    }
    
    
}

