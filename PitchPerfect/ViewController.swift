//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Nrupesh Patel on 11/11/16.
//  Copyright © 2016 Nrupesh Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: Any) {
        recordingLabel.text = "Recording audio"
        stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false
    }

    @IBOutlet weak var recordingLabel: UILabel!
    
    @IBAction func stopRecording(_ sender: Any) {
        recordingLabel.text = "Tap to record"
        stopRecordingButton.isEnabled = false
        recordButton.isEnabled = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        stopRecordingButton.isEnabled = false
    }
    
    @IBOutlet weak var recordButton: UIButton!
    
    
    @IBOutlet weak var stopRecordingButton: UIButton!
}

