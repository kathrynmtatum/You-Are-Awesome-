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
    
    var imageNumber = 0
    var messageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Cool!", "You Are Nice!", "You Are Funny!"]
        
        messageLabel.text = messages[messageNumber]
        messageNumber += 1
        if messageNumber == messages.count {
            messageNumber = 0
            
        }
        

    }

}
