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
        
        var newMessage = messages[Int.random(in: 0...messages.count-1)]
        while messageLabel.text == newMessage {
            print("*** Repeating value. Both newMessage and messageLabel.text = \(newMessage) and \(messageLabel.text)")
            newMessage = messages[Int.random(in: 0...messages.count-1)]
        }
        messageLabel.text = newMessage
        
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        
        
    }
    
}
