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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        if messageLabel.text == "You Are Awesome!" {
            messageLabel.text = "You Are Great!"
            imageView.image = UIImage(named: "image1")
        } else if messageLabel.text == "You Are Great!" {
            messageLabel.text = "You Are Da Bomb!"
            imageView.image = UIImage(named: "image2")
        } else {
            messageLabel.text = "You Are Awesome!"
            imageView.image = UIImage(named: "image0")
        }
        
    }
    
}
