//
//  LaunchScreenViewController.swift
//  Netflix2
//
//  Created by Giuseppe Ferrara on 13/12/2019.
//  Copyright © 2019 Giuseppe Ferrara. All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController {
    
    @IBOutlet weak var netflixImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
     
        animations()
        
        let mainViewController = (storyboard?.instantiateViewController(withIdentifier: "mainController"))!
      
        self.present(mainViewController, animated: false, completion: nil)
        
    }
    
    func animations() {
        biggerAndSmaller()
//        exitToView()
    }
    
    func biggerAndSmaller() {
        UIView.animate(withDuration: 2, animations: {
                  let scaleUp = CGAffineTransform(scaleX: 15, y: 15)
                 let scaleDown = CGAffineTransform(scaleX: 1/5, y: 1/5)
                 self.netflixImageView.transform = scaleUp
                 self.netflixImageView.transform = scaleDown
                 
             })
    }
    
    func exitToView() {
        UIView.animate(withDuration: 1, animations: {
                  let move = CGAffineTransform(translationX: 1200, y: 0)
                  self.netflixImageView.transform = move
              })
              
    }
    
    
    
    
    
    
    
}
