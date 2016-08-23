//
//  FirstViewController.swift
//  MoveIt Music
//
//  Created by Grace Cuenca on 8/16/16.
//  Copyright © 2016 GWC. All rights reserved.
//

import UIKit
import AVFoundation


class FirstViewController: UIViewController {
    
    var myAudioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var myVolumeController: UISlider!
    
    @IBAction func pauseAudio(sender: AnyObject) {
        
        myAudioPlayer.pause()
        
    }
    
    @IBAction func playAudio(sender: AnyObject) {
        
        myAudioPlayer.play()
        
    }
    
    @IBAction func stopAudio(sender: AnyObject) {
        
        myAudioPlayer.stop()
        myAudioPlayer.currentTime = 0
        
    }
    
    @IBAction func controlVolume(sender: AnyObject) {
        
        myAudioPlayer.volume = myVolumeController.value
        
    }
    
    override func viewDidLoad() {
        
        //get the path of our file
        let myFilePathString = NSBundle.mainBundle().pathForResource("save me", ofType: "mp3")
        
        if let myFilePathString = myFilePathString {
            
            let myFilePathURL = NSURL(fileURLWithPath: myFilePathString)
            
            
            do {
                
                try myAudioPlayer = AVAudioPlayer(contentsOfURL: myFilePathURL)
                
                //myAudioPlayer.play()
                
            }
            catch {
                
                print("error")
                
            }
            
        }
        
        
        //point the avaudio player to that path
        
        super.viewDidLoad()
        
    }
    
    
}
