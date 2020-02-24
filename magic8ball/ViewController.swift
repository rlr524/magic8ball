//
//  ViewController.swift
//  magic8ball
//
//  Created by Rob Ranf on 2/23/20.
//  Copyright © 2020 Rob Ranf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomEightBall : Int = 0
    
    let eightBallArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateEightBall()
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateEightBallRandom()
    }
    
    func updateEightBall() {
        imageView.image = UIImage(named: eightBallArray[4])
    }
    
    func updateEightBallRandom() {
        randomEightBall = Int.random(in: 0...4)
        imageView.image = UIImage(named: eightBallArray[randomEightBall])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateEightBallRandom()
    }
}

