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
var helpVar = GameTime - 1
var currentScoreTeamOne = 0
var currentScoreTeamTwo = 0
var Period = 1
var segueToWhoMade = "whatHappendToWhoMadeItSegue"

class WhatHappendViewController: UIViewController {
    
    //GameTime
   
    @IBAction func backToSettingsButton(_ sender: AnyObject) {
        performSegue(withIdentifier: "toInGameSettingsSegue", sender: nil)
    }
    
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
    
    @IBOutlet weak var periodLabel: UILabel!
    
    @IBAction func twoMinutesBackPressed(_ sender: UIButton) {
        if currentMinute > 2 {
            currentMinute = currentMinute - 2
            currentMinuteMinusTwo = currentMinuteMinusTwo - 2
            currentMinuteMinusOne = currentMinuteMinusOne - 2
            currentMinutePlusOne = currentMinutePlusOne - 2
            currentMinutePlusTwo = currentMinutePlusTwo - 2
        }
        updateLabels()

    }
    
    
    @IBAction func oneMinuteBackPressed(_ sender: UIButton) {
        if currentMinute > 1 {
            currentMinute = currentMinute - 1
            currentMinuteMinusTwo = currentMinuteMinusTwo - 1
            currentMinuteMinusOne = currentMinuteMinusOne - 1
            currentMinutePlusOne = currentMinutePlusOne - 1
            currentMinutePlusTwo = currentMinutePlusTwo - 1
        }
        updateLabels()
    }
    
    
    @IBAction func nextMinutePressed(_ sender: UIButton) {
        if currentMinute <= GameTime - 1 {
            currentMinute = currentMinute + 1
            currentMinuteMinusTwo = currentMinuteMinusTwo + 1
            currentMinuteMinusOne = currentMinuteMinusOne + 1
            currentMinutePlusOne = currentMinutePlusOne + 1
            currentMinutePlusTwo = currentMinutePlusTwo + 1
        }
        updateLabels()
    }
    
    @IBAction func skipTwoMinutesPressed(_ sender: UIButton) {
        if currentMinute <= GameTime - 2 {
            currentMinute = currentMinute + 2
            currentMinuteMinusTwo = currentMinuteMinusTwo + 2
            currentMinuteMinusOne = currentMinuteMinusOne + 2
            currentMinutePlusOne = currentMinutePlusOne + 2
            currentMinutePlusTwo = currentMinutePlusTwo + 2
        } else if currentMinute == GameTime - 1 {
            self.performSegue(withIdentifier: "breakSegue", sender: self)
        } else if currentMinute == GameTime {
            self.performSegue(withIdentifier: "breakSegue", sender: self)
        }
        print(Period)
        updateLabels()
    }
    
    func resetMinutes() {
                currentMinute = 1
        currentMinuteMinusTwo = -1
        currentMinuteMinusOne = 0
        currentMinutePlusOne = 2
        currentMinutePlusTwo = 3
        updateLabels()
    }
    
    func refreshMinutes() {
    let setCurrentMinuteObject = UserDefaults.standard.object(forKey: "period")
    if let setCurrentMinute = setCurrentMinuteObject as? String {
        if setCurrentMinute == "2" {
            GameTime = GameTime+GameTime
            currentMinute = 11
        } else if setCurrentMinute == "3" {
            GameTime = (GameTime/2)+GameTime
            currentMinute = 21
        } else if setCurrentMinute == "4" {
            GameTime = (GameTime/3)*4
            currentMinute = 31
        }
        }
        currentMinuteMinusTwo = currentMinute-2
        currentMinuteMinusOne = currentMinute-1
        currentMinutePlusOne = currentMinute+1
        currentMinutePlusTwo = currentMinute+2
        updateLabels()
    }
    
    
    func updateLabels(){
        self.CurrentMinuteLabel.text = "\(currentMinute)"
        if currentMinuteMinusTwo >= (GameTime-helpVar) {
            self.twoMinutesBackLabel.text = "\(currentMinuteMinusTwo)"
        } else {
            self.twoMinutesBackLabel.text = "" }
        if currentMinuteMinusOne >= (GameTime-helpVar) {
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
            if currentScoreTeamOne == currentScoreTeamTwo {
            self.plusTwoMinutesLabel.text = "OT"
            } else {
            self.plusTwoMinutesLabel.text = "Break"
        }
    }
        periodLabel.text = "Period \(Period)"
        UserDefaults.standard.set("\(currentMinute)", forKey: "minute")
        
        print("Minute \(currentMinute)")
 
    }
    
    //actions
    @IBAction func twoPointerPressed(_ sender: UIButton) {
        UserDefaults.standard.set("2Points", forKey: "action")
        print("2p")
    //    currentScoreTeamOne = currentScoreTeamOne + 2
    //    currentScoreTeamOneLabel.text = "\(currentScoreTeamOne)"

        self.performSegue(withIdentifier: "\(segueToWhoMade)", sender: self)
    }
    
    @IBAction func threePointsPressed(_ sender: UIButton) {
        print("3p")
        UserDefaults.standard.set("3Points", forKey: "action")
        self.performSegue(withIdentifier: "\(segueToWhoMade)", sender: self)
    }
    
    
    
    @IBAction func FTmadePressed(_ sender: UIButton) {
        print("FT made")
        UserDefaults.standard.set("FTmade", forKey: "action")
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
        currentScoreTeamOneLabel.text = "\(currentScoreTeamOne)"
        currentScoreTeamTwoLabel.text = "\(currentScoreTeamTwo)"
        //Period = 1
       // UserDefaults.standard.set("1", forKey: "period")
        print ("viewDidLoad")
        
        let setPeriodObject = UserDefaults.standard.object(forKey: "period")
        if let setPeriod = setPeriodObject as? String {
            if setPeriod == "1" {
                Period = 1
                periodLabel.text = "Period \(Period)"
                UserDefaults.standard.set("1", forKey: "period")
                currentMinute = 1
                print ("Period \(Period)")
            } else if setPeriod == "2" {
                Period = 2
                periodLabel.text = "Period \(Period)"
                UserDefaults.standard.set("2", forKey: "period")
                currentMinute = 11
                print ("Period \(Period)")
            } else if setPeriod == "3" {
                Period = 3
                periodLabel.text = "Period \(Period)"
                UserDefaults.standard.set("3", forKey: "period")
                currentMinute = 21
                print ("Period \(Period)")
            } else if setPeriod == "4" {
                Period = 4
                periodLabel.text = "Period \(Period)"
                plusTwoMinutesLabel.text = "Finish"
                UserDefaults.standard.set("4", forKey: "period")
                currentMinute = 31
                print("Period \(Period)")
            }
        }
        refreshMinutes()
        updateLabels()
    }

    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    
      /*  let setPeriodObject = UserDefaults.standard.object(forKey: "period")
        if let setPeriod = setPeriodObject as? String {
            if setPeriod == "1" {
                    Period = 1
                    periodLabel.text = "Period \(Period)"
                    UserDefaults.standard.set("1", forKey: "period")
                    currentMinute = 1
                    print ("Period \(Period)")
            } else if setPeriod == "2" {
                    Period = 2
                    periodLabel.text = "Period \(Period)"
                    UserDefaults.standard.set("2", forKey: "period")
                    currentMinute = 11
                    print ("Period \(Period)")
            } else if setPeriod == "3" {
                    Period = 3
                    periodLabel.text = "Period \(Period)"
                    UserDefaults.standard.set("3", forKey: "period")
                    currentMinute = 21
                    print ("Period \(Period)")
            } else if setPeriod == "4" {
                    Period = 4
                    periodLabel.text = "Period \(Period)"
                    plusTwoMinutesLabel.text = "Finish"
                    UserDefaults.standard.set("4", forKey: "period")
                    currentMinute = 31
                    print("Period \(Period)")
            }
                refreshMinutes()
                print ("test1")
                updateLabels()
        } */
        
        let resetGameObject = UserDefaults.standard.object(forKey: "action")
        if let resetGame = resetGameObject as? String {
        if resetGame == "resetGame" {
            currentScoreTeamOne = 0
            currentScoreTeamOneLabel.text = "0"
            currentScoreTeamTwo = 0
            currentScoreTeamTwoLabel.text = "0"
            GameTime = 10
            Period = 1
            resetMinutes()
            updateLabels()
            }
        }
        
        let lastStatMinuteObject = UserDefaults.standard.object(forKey: "minute")
        if let lastStatMinute = lastStatMinuteObject as? String {
            
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
        _ = UserDefaults.standard.bool(forKey: "OneOrBothTeams")
        if UserDefaults.standard.bool(forKey: "OneOrBothTeams"){
            segueToWhoMade = "whatHappendToWhoMadeBothTeamsSegue"
        } else {
            segueToWhoMade = "whatHappendToWhoMadeItSegue"
        }
        
//        let lastStatPlayerObject = UserDefaults.standard.object(forKey: "player")
//        if let lastStatPlayer = lastStatPlayerObject as? String {
//            lastStatPlayerLabel.text = "\(lastStatPlayer)"
//            //lastStatPlayerLabel.textColor = teamOneColor
//        }
  
        let selectedTeamObject = UserDefaults.standard.object(forKey: "selectedTeam")
        if let selectedTeam = selectedTeamObject as? String {
            if selectedTeam == "T1" {
                print("selected Team T1")
                    let lastStatActionObject = UserDefaults.standard.object(forKey: "action")
                    if let lastStatAction = lastStatActionObject as? String {
                        if lastStatAction == "2Points" {
                            currentScoreTeamOne = currentScoreTeamOne + 2
                            currentScoreTeamOneLabel.text = "\(currentScoreTeamOne)"
                        } else if lastStatAction == "3Points" {
                            currentScoreTeamOne = currentScoreTeamOne + 3
                            currentScoreTeamOneLabel.text = "\(currentScoreTeamOne)"
                        } else if lastStatAction == "FTmade" {
                            currentScoreTeamOne = currentScoreTeamOne + 1
                            currentScoreTeamOneLabel.text = "\(currentScoreTeamOne)"
                        }
                        let lastStatPlayerObject = UserDefaults.standard.object(forKey: "player")
                        if let lastStatPlayer = lastStatPlayerObject as? String {
                            lastStatPlayerLabel.text = "\(lastStatPlayer)"
                            let lastStatTeamColorObject = UserDefaults.standard.object(forKey: "HomeJerseyColor")
                            if let lastStatTeamColor = lastStatTeamColorObject as? String {
                                if lastStatTeamColor == "black" {
                                    lastStatPlayerLabel.textColor = UIColor.black
                                } else if lastStatTeamColor == "blue" {
                                    lastStatPlayerLabel.textColor = UIColor.blue
                                } else if lastStatTeamColor == "red" {
                                    lastStatPlayerLabel.textColor = UIColor.red
                                } else if lastStatTeamColor == "white" {
                                    lastStatPlayerLabel.textColor = UIColor.white
                                } else if lastStatTeamColor == "yellow" {
                                    lastStatPlayerLabel.textColor = UIColor.yellow
                                } else if lastStatTeamColor == "green" {
                                    lastStatPlayerLabel.textColor = UIColor.green
                                }
                            }
                        }
                }
            } else if selectedTeam == "T2" {
                print("selected Team T2")
                let lastStatActionObject = UserDefaults.standard.object(forKey: "action")
                if let lastStatAction = lastStatActionObject as? String {
                    if lastStatAction == "2Points" {
                        currentScoreTeamTwo = currentScoreTeamTwo + 2
                        currentScoreTeamTwoLabel.text = "\(currentScoreTeamTwo)"
                    } else if lastStatAction == "3Points" {
                        currentScoreTeamTwo = currentScoreTeamTwo + 3
                        currentScoreTeamTwoLabel.text = "\(currentScoreTeamTwo)"
                    } else if lastStatAction == "FTmade" {
                        currentScoreTeamTwo = currentScoreTeamTwo + 1
                        currentScoreTeamTwoLabel.text = "\(currentScoreTeamTwo)"
                    }
                    let lastStatPlayerObject = UserDefaults.standard.object(forKey: "player")
                    if let lastStatPlayer = lastStatPlayerObject as? String {
                        lastStatPlayerLabel.text = "\(lastStatPlayer)"
                        let lastStatTeamColorObject = UserDefaults.standard.object(forKey: "OpponentJerseyColor")
                        if let lastStatTeamColor = lastStatTeamColorObject as? String {
                            if lastStatTeamColor == "black" {
                                lastStatPlayerLabel.textColor = UIColor.black
                            } else if lastStatTeamColor == "blue" {
                                lastStatPlayerLabel.textColor = UIColor.blue
                            } else if lastStatTeamColor == "red" {
                                lastStatPlayerLabel.textColor = UIColor.red
                            } else if lastStatTeamColor == "white" {
                                lastStatPlayerLabel.textColor = UIColor.white
                            } else if lastStatTeamColor == "yellow" {
                                lastStatPlayerLabel.textColor = UIColor.yellow
                            } else if lastStatTeamColor == "green" {
                                lastStatPlayerLabel.textColor = UIColor.green
                            }
                        }
                    }
                    
                }
            }
        }
        updateLabels()
    }
}
