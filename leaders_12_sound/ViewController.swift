//
//  ViewController.swift
//  leaders_12_sound
//
//  Created by Yoshinori Shibahara on 2020/05/10.
//  Copyright © 2020 Yoshinori Shibahara. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!
    @IBOutlet var pianoButton: UIButton!
    @IBOutlet var cymbalButton: UIButton!
    
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    let cymbalSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "symbal")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton() {
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        print("down")
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
    }
    
    @IBAction func touchUpDrumButton() {
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
    @IBAction func touchDownPianoButton() {
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        print("down")
        pianoSoundPlayer.currentTime = 0
        pianoSoundPlayer.play()
    }
    
    @IBAction func touchUpPianoButton() {
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    @IBAction func touchDownCymbalButton() {
        cymbalButton.setImage(UIImage(named: "cymbalPlayingImage"), for: .normal)
        print("down")
        cymbalSoundPlayer.currentTime = 0
        cymbalSoundPlayer.play()
    }
    
    @IBAction func touchUpCymbalButton() {
        cymbalButton.setImage(UIImage(named: "cymbalImage"), for: .normal)
    }


}

