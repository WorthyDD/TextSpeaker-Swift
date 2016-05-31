//
//  SpeakerManager.swift
//  TextReader
//
//  Created by 武淅 段 on 16/5/30.
//  Copyright © 2016年 武淅 段. All rights reserved.
//



import UIKit
import AVFoundation

class SpeakerManager: NSObject {

    
    var player = AVSpeechSynthesizer()
    var language : String?
    var volume : Float = 1.0
    var rate : Float = AVSpeechUtteranceDefaultSpeechRate
    var pitchMutiplier : Float = 1.0        //0.5-2.0
    
    static let shareInstance = SpeakerManager()
    
    func play(text:String){
        
        let u = AVSpeechUtterance(string: text)
        u.voice = AVSpeechSynthesisVoice(language: language)
        u.volume = volume
        u.rate = rate
        u.pitchMultiplier = self.pitchMutiplier
        player.speakUtterance(u)
    }
    
}
