//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Kathryn Tatum on 1/19/20.
//  Copyright © 2020 Kathryn Tatum. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 6
    var audioPlayer = AVAudioPlayer()
    
    //var randomMessage = ["You Are Funny!", "You Are Weird!", "You Are Amazing!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func playSound(name: String) {
        if let sound = NSDataAsset(name: name) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print ("ERROR: 🛑 \(error.localizedDescription) Could not initialize AVAudioPlayer object")
            }
        } else {
            print("ERROR: 🛑 Could not read data from file sound0")
        }
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!", "You Are Great!", "You Are Fantastic!", "Fabulous? That's You!", "When the Genuis Bar Needs Help, They Call You!"]
        
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalNumberOfImages-1)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        var newSoundNumber: Int
        repeat {
            newSoundNumber = Int.random(in: 0...totalNumberOfSounds-1)
        } while soundNumber == newSoundNumber
        soundNumber = newSoundNumber
        print("*** The New Sound Number is \(soundNumber)")
        playSound(name: "sound\(soundNumber)")

    }
    
}
