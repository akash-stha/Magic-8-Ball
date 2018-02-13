//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Newarpunk on 2/13/18.
//  Copyright © 2018 Akash Sth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       newBallImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }

    
    @IBAction func askButtonPressed(_ sender: UIButton) {
    
        newBallImage()
        
    }
    
    func newBallImage(){
        
        randomBallNumber = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
}

