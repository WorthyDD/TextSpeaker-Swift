//
//  SeelctLauageViewController.swift
//  TextReader
//
//  Created by 武淅 段 on 16/5/30.
//  Copyright © 2016年 武淅 段. All rights reserved.
//

/*
 
 ar-SA       Arabic      Saudi Arabia
 cs-CZ       Czech       Czech Republic
 da-DK       Danish      Denmark
 de-DE       German      Germany
 el-GR       Modern Greek        Greece
 en-AU       English     Australia
 en-GB       English     United Kingdom
 en-IE       English     Ireland
 en-US       English     United States
 en-ZA       English     South Africa
 es-ES       Spanish     Spain
 es-MX       Spanish     Mexico
 fi-FI       Finnish     Finland
 fr-CA       French      Canada
 fr-FR       French      France
 he-IL       Hebrew      Israel
 hi-IN       Hindi       India
 hu-HU       Hungarian       Hungary
 id-ID       Indonesian      Indonesia
 it-IT       Italian     Italy
 ja-JP       Japanese        Japan
 ko-KR       Korean      Republic of Korea
 nl-BE       Dutch       Belgium
 nl-NL       Dutch       Netherlands
 no-NO       Norwegian       Norway
 pl-PL       Polish      Poland
 pt-BR       Portuguese      Brazil
 pt-PT       Portuguese      Portugal
 ro-RO       Romanian        Romania
 ru-RU       Russian     Russian Federation
 sk-SK       Slovak      Slovakia
 sv-SE       Swedish     Sweden
 th-TH       Thai        Thailand
 tr-TR       Turkish     Turkey
 zh-CN       Chinese     China
 zh-HK       Chinese     Hong Kong
 zh-TW       Chinese     Taiwan
 
 */

import UIKit

class SeelctLauageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var lauDic :Dictionary<String,String> = ["Chinese" : "zh-CN",
                                             "Chinese HK" : "zh-HK",
                                             "Chinses TW" : "zh-TW",
                                             "Japanese" : "ja-JP",
                                            "Australia English":"en-AU",
                                             "UK English" : "en-GB",
                                             "US English" : "en-US",
                                             "Ireland English" : "en-IE",
                                             "Spanish" : "es-ES",
                                             "French" : "fr-FR"]
    
    var keys : Array<String> = ["Chinese",
                                "Chinese HK",
                                "Chinses TW",
                                "Japanese" ,
                                "Australia English",
                                "UK English" ,
                                "US English" ,
                                "Ireland English" ,
                                "Spanish",
                                "French"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.automaticallyAdjustsScrollViewInsets = true
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lauDic.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let key = keys[indexPath.row]
        cell.textLabel!.text = key
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let key = keys[indexPath.row]
        let value = lauDic[key]
        SpeakerManager.shareInstance.language = value
        self.navigationController?.popViewControllerAnimated(true)
    }

}
