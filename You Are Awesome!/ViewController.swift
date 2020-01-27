//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Kathryn Tatum on 1/19/20.
//  Copyright © 2020 Kathryn Tatum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 9
    
    //var randomMessage = ["You Are Funny!", "You Are Weird!", "You Are Amazing!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!", "You Are Great!", "You Are Fantastic!", "Fabulous? That's You!", "When the Genuis Bar Needs Help, They Call You!"]
        
        messageLabel.text = messages[Int.random(in: 0...messages.count-1)]
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        
        
        //print(imageNumber)
        let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        imageNumber = imageNumber + 1
        if imageNumber == 10 {
            imageNumber = 0
        }
        
//        let randomNumber = Int.random(in: 0...2)
//        print(randomMessage[randomNumber])
        
        
//        if messageLabel.text == "You Are Awesome!" {
//            messageLabel.text = "You Are Great!"
//            imageView.image = UIImage(named: "image1")
//        } else if messageLabel.text == "You Are Great!" {
//            messageLabel.text = "You Are Da Bomb!"
//            imageView.image = UIImage(named: "image2")
//        } else {
//            messageLabel.text = "You Are Awesome!"
//            imageView.image = UIImage(named: "image0")
//        }
        
    }
    
}
