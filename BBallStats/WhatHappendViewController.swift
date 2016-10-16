//
//  WhatHappendViewController.swift
//  BBallStats
//
//  Created by Fred Erik on 12.10.16.
//  Copyright © 2016 Fred Erik. All rights reserved.
//

import UIKit
import CoreData

var currentMinute = 1
var currentMinuteMinusTwo = -1
var currentMinuteMinusOne = 0
var currentMinutePlusOne = 2
var currentMinutePlusTwo = 3
var GameTime = 10
var currentScoreTeamOne = 0
var currentScoreTeamTwo = 0
var segueToWhoMade = "whatHappendToWhoMadeItSegue"

class WhatHappendViewController: UIViewController {
    
    //GameTime
   
    
    @IBOutlet weak var lastStatMinuteLabel: UILabel!
    
    @IBOutlet weak var lastStatActionLabel: UILabel!
    
    @IBOutlet weak var lastStatPlayerLabel: UILabel!
    
    @IBOutlet weak var twoMinutesBackLabel: UILabel!
    
    @IBOutlet weak var lastMinuteLabel: UILabel!
    
    @IBOutlet weak var CurrentMinuteLabel: UILabel!
    
    @IBOutlet weak var nextMinuteLabel: UILabel!
    
    @IBOutlet weak var plusTwoMinutesLabel: UILabel!
    
    @IBOutlet weak var currentScoreTeamOneLabel: UILabel!
    
    @IBOutlet weak var currentScoreTeamTwoLabel: UILabel!
    
    @IBAction func twoMinutesBackPressed(_ sender: UIButton) {
        if currentMinute > 2 {
            currentMinute = currentMinute - 2
            currentMinuteMinusTwo = currentMinuteMinusTwo - 2
            currentMinuteMinusOne = currentMinuteMinusOne - 2
            currentMinutePlusOne = currentMinutePlusOne - 2
            currentMinutePlusTwo = currentMinutePlusTwo - 2
            updateLabels()
        }
    }
    
    
    @IBAction func oneMinuteBackPressed(_ sender: UIButton) {
        if currentMinute > 1 {
            currentMinute = currentMinute - 1
            currentMinuteMinusTwo = currentMinuteMinusTwo - 1
            currentMinuteMinusOne = currentMinuteMinusOne - 1
            currentMinutePlusOne = currentMinutePlusOne - 1
            currentMinutePlusTwo = currentMinutePlusTwo - 1
            updateLabels()
        }
    }
    
    
    @IBAction func nextMinutePressed(_ sender: UIButton) {
        if currentMinute <= GameTime - 1 {
            currentMinute = currentMinute + 1
            currentMinuteMinusTwo = currentMinuteMinusTwo + 1
            currentMinuteMinusOne = currentMinuteMinusOne + 1
            currentMinutePlusOne = currentMinutePlusOne + 1
            currentMinutePlusTwo = currentMinutePlusTwo + 1
            updateLabels()
        }
    }
    
    @IBAction func skipTwoMinutesPressed(_ sender: UIButton) {
        if currentMinute <= GameTime - 2 {
            currentMinute = currentMinute + 2
            currentMinuteMinusTwo = currentMinuteMinusTwo + 2
            currentMinuteMinusOne = currentMinuteMinusOne + 2
            currentMinutePlusOne = currentMinutePlusOne + 2
            currentMinutePlusTwo = currentMinutePlusTwo + 2
            updateLabels()
        }
    }
    
    
    
    func updateLabels(){
        self.CurrentMinuteLabel.text = "\(currentMinute)"
        if currentMinuteMinusTwo >= 1 {
            self.twoMinutesBackLabel.text = "\(currentMinuteMinusTwo)"
        } else {
            self.twoMinutesBackLabel.text = "" }
        if currentMinuteMinusOne >= 1 {
            self.lastMinuteLabel.text = "\(currentMinuteMinusOne)"
        } else {
            self.lastMinuteLabel.text = "" }
        
        if currentMinutePlusOne < GameTime + 1 {
            self.nextMinuteLabel.text = "\(currentMinutePlusOne)"
        } else {
            self.nextMinuteLabel.text = "" }
        
        if currentMinutePlusTwo < GameTime + 1 {
            self.plusTwoMinutesLabel.text = "\(currentMinutePlusTwo)"
        } else {
            self.plusTwoMinutesLabel.text = ""
        }
        
        UserDefaults.standard.set("\(currentMinute)", forKey: "minute")
        
        print("Minute \(currentMinute)")
 
    }
    
    //actions
    @IBAction func twoPointerPressed(_ sender: UIButton) {
        print("2p")
        currentScoreTeamOne = currentScoreTeamOne + 2
        currentScoreTeamOneLabel.text = "\(currentScoreTeamOne)"
        UserDefaults.standard.set("2 Points", forKey: "action")
        self.performSegue(withIdentifier: "\(segueToWhoMade)", sender: self)
    }
    
    @IBAction func threePointsPressed(_ sender: UIButton) {
        print("3p")
        currentScoreTeamOne = currentScoreTeamOne + 3
        currentScoreTeamOneLabel.text = "\(currentScoreTeamOne)"
        UserDefaults.standard.set("3 Points", forKey: "action")
        self.performSegue(withIdentifier: "\(segueToWhoMade)", sender: self)
    }
    
    
    
    @IBAction func FTmadePressed(_ sender: UIButton) {
        print("FT made")
        currentScoreTeamOne = currentScoreTeamOne + 1
        currentScoreTeamOneLabel.text = "\(currentScoreTeamOne)"
        UserDefaults.standard.set("FT made", forKey: "action")
        self.performSegue(withIdentifier: "\(segueToWhoMade)", sender: self)
        
    }
    
    @IBAction func FTmissedPressed(_ sender: UIButton) {
        print("FT missed")
        UserDefaults.standard.set("FT missed", forKey: "action")
        self.performSegue(withIdentifier: "\(segueToWhoMade)", sender: self)
        
    }
    
    @IBAction func FoulPressed(_ sender: UIButton) {
        print("Foul")
        UserDefaults.standard.set("Foul", forKey: "action")
        self.performSegue(withIdentifier: "\(segueToWhoMade)", sender: self)
    }
    
    @IBAction func TOPressed(_ sender: UIButton) {
        print("TurnOver")
        UserDefaults.standard.set("TO", forKey: "action")
        self.performSegue(withIdentifier: "\(segueToWhoMade)", sender: self)
    }
    
    @IBAction func StealPressed(_ sender: UIButton) {
        print("Steal")
        UserDefaults.standard.set("Steal", forKey: "action")
        self.performSegue(withIdentifier: "\(segueToWhoMade)", sender: self)
        
    }
    @IBAction func TimeOutPressed(_ sender: UIButton) {
        print("TimeOut")
        UserDefaults.standard.set("TO", forKey: "action")
        self.performSegue(withIdentifier: "\(segueToWhoMade)", sender: self)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UserDefaults.standard.set("1", forKey: "minute")
       
        let collectBothTeamsObject = UserDefaults.standard.object(forKey: "OneOrBothTeams")
        if let collectBothTeams = collectBothTeamsObject as? Bool {
            if collectBothTeams == false {
                segueToWhoMade = "whatHappendToWhoMadeItSegue"
            } else {
                segueToWhoMade = "whatHappendToWhoMadeBothTeamsSegue"
            }
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        let lastStatMinuteObject = UserDefaults.standard.object(forKey: "minute")
        if var lastStatMinute = lastStatMinuteObject as? String {
            
            if lastStatMinute == "1" {
                lastStatMinuteLabel.text = "1st Minute"
            } else if lastStatMinute == "2" {
                lastStatMinuteLabel.text = "2nd Minute"
            } else if lastStatMinute == "3" {
                lastStatMinuteLabel.text = "3rd Minute"
            } else {
            lastStatMinuteLabel.text = "\(lastStatMinute)th Minute"
            }
            
            let lastStatActionObject = UserDefaults.standard.object(forKey: "action")
            
            if let lastStatAction = lastStatActionObject as? String {
                lastStatActionLabel.text = "\(lastStatAction)"
            }
            
        }
        
        let lastStatPlayerObject = UserDefaults.standard.object(forKey: "player")
        if let lastStatPlayer = lastStatPlayerObject as? String {
            lastStatPlayerLabel.text = "\(lastStatPlayer)"
            //lastStatPlayerLabel.textColor = teamOneColor
        }
    }
}
