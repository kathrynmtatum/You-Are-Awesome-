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
    let message1 = "You Are Awesome!"
    let message2 = "You Are Great!"
    let message3 = "You Are Amazing!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        if messageLabel.text == message1 {
            messageLabel.text = message2
        } else if messageLabel.text == message2 {
            messageLabel.text = message3
        } else {
            messageLabel.text = message1
        }

    }

}
