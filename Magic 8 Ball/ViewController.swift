//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by AAA on 10/19/18.
//  Copyright © 2018 AAA. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    let ballAray = ["ball1" , "ball2" , "ball3" , "ball4" , "ball5"]
    
    var randomBallNumber:Int = 0
    
  
    
    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBallArray()
    }


    @IBAction func askButton(_ sender: Any) {
        updateBallArray()
    }
    
    func updateBallArray (){
        randomBallNumber = Int.random(in:0 ... 4)
        
        ballImage.image = UIImage(named:ballAray[randomBallNumber])
    }
}

