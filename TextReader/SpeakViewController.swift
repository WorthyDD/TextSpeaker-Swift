//
//  SpeakViewController.swift
//  TextReader
//
//  Created by 武淅 段 on 16/5/30.
//  Copyright © 2016年 武淅 段. All rights reserved.
//

import UIKit

class SpeakViewController: UIViewController {

    
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textView.text = ""
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func speak(sender: UIButton) {
        
        if textView.text.characters.count <= 0{
            return
        }
        SpeakerManager.shareInstance.play(textView.text)
    }

}
