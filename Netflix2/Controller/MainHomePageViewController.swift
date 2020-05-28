//
//  MainHomePageViewController.swift
//  Netflix2
//
//  Created by Giuseppe Ferrara on 09/12/2019.
//  Copyright © 2019 Giuseppe Ferrara. All rights reserved.
//

import UIKit
import AVKit
import NotificationCenter

class MainHomePageViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
  
   
    
    
    var movieUrl: URL?
    
    let moviesCategory = ["Comic", "Thriller", "Action", "Romantic", "Fantasy"]
 
    @IBOutlet weak var mainMovieTableView: UITableView!
    let api = FakeApi.getApi()
    var movieApi: FakeApi = FakeApi.getApi()
    var numberOfMoviesToShow: Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        doAnimations()

        mainMovieTableView.delegate = self
        mainMovieTableView.dataSource = self
        
        customizeBar()
        
        
        
        let swipeUpGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipeUpHandler))
        swipeUpGestureRecognizer.direction = .up
        swipeUpGestureRecognizer.delegate = self
        mainMovieTableView.addGestureRecognizer(swipeUpGestureRecognizer)
        let swipeDownGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipeDownHandler))
        swipeDownGestureRecognizer.direction = .down
        swipeDownGestureRecognizer.delegate = self
        mainMovieTableView.addGestureRecognizer(swipeDownGestureRecognizer)
        
        let name = Notification.Name("playButtonPressed")
        
        NotificationCenter.default.addObserver(self, selector: #selector(openPlayer), name: name, object: movieUrl)
        
        print("subscribed to notification center")
        
    }
 
    
    func doAnimations(){
        mainMovieTableView.isHidden = true
        let animationView = UIView()
        animationView.frame = view.frame
        animationView.backgroundColor = .black
        navigationController?.setNavigationBarHidden(true, animated: true)
        let netflixImage = UIImageView(image: UIImage(named: "netflixLogo"))
        netflixImage.frame = CGRect(x: 0, y: 345, width: 414, height: 207)
        animationView.addSubview(netflixImage)
        view.addSubview(animationView)
        
        UIView.animate(withDuration: 2, animations: {
            let bigger = CGAffineTransform(scaleX: 7, y: 7)
            netflixImage.transform = bigger

        })
        
        UIView.animate(withDuration: 3, animations: {
            let smaller = CGAffineTransform(scaleX: 1/20, y: 1/20)
            netflixImage.transform = smaller
        })
        
        
        _ = Timer.scheduledTimer(withTimeInterval: 3.2, repeats: false, block: {_ in
            animationView.removeFromSuperview()
            self.mainMovieTableView.isHidden = false
            self.navigationController?.setNavigationBarHidden(false, animated: true)
        })
        
    }
    
    @objc func swipeUpHandler(){
        print("swipe up detected")
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @objc func swipeDownHandler(){
        print("swipe down detected")
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
    }
    
    @objc func openPlayer(_ notification: Notification){
        
        print("notification received")
        
        let url = notification.object as! URL
        
        let playerViewController = storyboard?.instantiateViewController(identifier: "PlayerViewController") as! PlayerViewController
        
        playerViewController.player = AVPlayer(url: url)
        
        self.present(playerViewController, animated: true, completion: nil)
        
        
    }
    
    
    func customizeBar(){
        let netflixImage = UIImage(named: "netflix")
        let barItemImage = UIBarButtonItem(customView: UIImageView(image: netflixImage))
//        navigationItem.leftBarButtonItem = barItemImage
        
        let moviesLabel = UILabel()
        moviesLabel.text = "      Movies"
        moviesLabel.font = UIFont(name: "SF Pro Display", size: 15)
        moviesLabel.textColor = .white
        let movieBarItem = UIBarButtonItem(customView: moviesLabel)
        let moviesLabel2 = UILabel()
               moviesLabel2.text = "      TV Series"
               moviesLabel2.font = UIFont(name: "SF Pro Display", size: 15)
               moviesLabel2.textColor = .white
               let movieBarItem2 = UIBarButtonItem(customView: moviesLabel2)
        let moviesLabel3 = UILabel()
               moviesLabel3.text = "      TV Shows"
               moviesLabel3.font = UIFont(name: "SF Pro Display", size: 15)
               moviesLabel3.textColor = .white
               let movieBarItem3 = UIBarButtonItem(customView: moviesLabel3)
        navigationItem.leftBarButtonItems = [barItemImage,movieBarItem, movieBarItem2, movieBarItem3]
        
     
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        
        
    }
    
    
    
}

extension MainHomePageViewController: UITableViewDataSource,UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movieApi.getTotalRows()
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "mainMovie") as! MainMovieTableViewCell
            
            // Configure the cell...
            cell.movieImageView.image = movieApi.mainMovie.image
            cell.movieImageView.frame = cell.contentView.frame
            cell.movieImageView.preservesSuperviewLayoutMargins = true
            cell.movieLink = movieApi.mainMovie.url
            cell.attributes.text = movieApi.mainMovie.attributes
            cell.attributes.font = UIFont(name: "SF Pro Display", size: 12)
            cell.attributes.textColor = .white
            
            
            
            return cell
            
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "comingSoonMovies") as! ComingSoonMoviesTableViewCell
            
            return cell
        } else if indexPath.row >= 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell2") as! ThirdRowTableViewCell
            
            cell.moviesCategoryLabel.text = moviesCategory[indexPath.row - 2]
            
            return cell
        }
        
        return UITableViewCell.init()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 541
        } else {
            return 169
        }
    }
    
    
}

extension MainHomePageViewController: UIGestureRecognizerDelegate {
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}






