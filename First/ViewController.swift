//
//  ViewController.swift
//  First
//
//  Created by mani on 21/07/17.
//  Copyright © 2017 mani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var stopRecord: UIButton!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statusLabel.text = ""
        stopRecord.isEnabled = false;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: Any) {
        setStatus(status: "Recording..");
        stopRecord.isEnabled = true;
        recordButton.isEnabled = false;
    }


    @IBAction func stopRecord(_ sender: Any) {
        setStatus(status: "Stopped");
        stopRecord.isEnabled = false;
        recordButton.isEnabled = true;
    }
    
    func setStatus(status:String) {
        statusLabel.text = status;
    }
}

