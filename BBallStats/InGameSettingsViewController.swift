//
//  InGameSettingsViewController.swift
//  BBallStats
//
//  Created by Fred Erik on 16.10.16.
//  Copyright © 2016 Fred Erik. All rights reserved.
//

import UIKit

class InGameSettingsViewController: UIViewController {

 //   var collectForBothTeams = false
    var homeTeamColor = UIColor.white
    var opponentTeamColor = UIColor.black
    
  
    @IBOutlet weak var SwitchState: UISwitch!
   

    @IBAction func tippOffButton(_ sender: AnyObject) {
        
        let settings = Settings()
            settings.statsForBoth = SwitchState.isOn
        
            if SwitchState.isOn {
                UserDefaults.standard.set(true, forKey: "OneOrBothTeams")
            } else {
                UserDefaults.standard.set(false, forKey: "OneOrBothTeams")
            }

        UserDefaults.standard.set("\(homeTeamColor)", forKey: "homeTeamColor")
        UserDefaults.standard.set("\(opponentTeamColor)", forKey: "opponentTeamColor")
         self.performSegue(withIdentifier: "SettingsToGameSegue", sender: self)
    }
    
    @IBAction func HomeTeamBlack(_ sender: AnyObject) {
        homeTeamColor = UIColor.black
        UserDefaults.standard.set("black", forKey: "HomeJerseyColor")
        UserDefaults.standard.set(false, forKey: "paleJerseyColor")
    }
    @IBAction func HomeTeamBlue(_ sender: AnyObject) {
        homeTeamColor = UIColor.blue
        UserDefaults.standard.set("blue", forKey: "HomeJerseyColor")
        UserDefaults.standard.set(false, forKey: "paleJerseyColor")
    }
    
    @IBAction func HomeTeamRed(_ sender: AnyObject) {
        homeTeamColor = UIColor.red
        UserDefaults.standard.set("red", forKey: "HomeJerseyColor")
        UserDefaults.standard.set(true, forKey: "paleJerseyColor")
    }
    @IBAction func HomeTeamWhite(_ sender: AnyObject) {
        homeTeamColor = UIColor.white
        UserDefaults.standard.set("white", forKey: "HomeJerseyColor")
        UserDefaults.standard.set(true, forKey: "paleJerseyColor")
    }
    
    @IBAction func HomeTeamYellow(_ sender: AnyObject) {
        homeTeamColor = UIColor.yellow
        UserDefaults.standard.set("yellow", forKey: "HomeJerseyColor")
        UserDefaults.standard.set(true, forKey: "paleJerseyColor")
    }
    @IBAction func HomeTeamGreen(_ sender: AnyObject) {
        homeTeamColor = UIColor.green
        UserDefaults.standard.set("green", forKey: "HomeJerseyColor")
        UserDefaults.standard.set(false, forKey: "paleJerseyColor")
    }
    
    @IBAction func OpponentTeamBlack(_ sender: UIButton) {
        opponentTeamColor = UIColor.black
        UserDefaults.standard.set("black", forKey: "OpponentJerseyColor")
        UserDefaults.standard.set(false, forKey: "paleJerseyColor")
    }
    @IBAction func OpponentTeamBlue(_ sender: UIButton) {
        opponentTeamColor = UIColor.blue
        UserDefaults.standard.set("blue", forKey: "OpponentJerseyColor")
        UserDefaults.standard.set(false, forKey: "paleJerseyColor")
    }
    @IBAction func OpponentTeamRed(_ sender: UIButton) {
        opponentTeamColor = UIColor.red
        UserDefaults.standard.set("red", forKey: "OpponentJerseyColor")
        UserDefaults.standard.set(false, forKey: "paleJerseyColor")
    }
    @IBAction func OpponentTeamWhite(_ sender: AnyObject) {
        opponentTeamColor = UIColor.white
        UserDefaults.standard.set("white", forKey: "OpponentJerseyColor")
        UserDefaults.standard.set(true, forKey: "paleJerseyColor")
        
    }
    @IBAction func OpponentTeamYellow(_ sender: AnyObject) {
        opponentTeamColor = UIColor.yellow
        UserDefaults.standard.set("yellow", forKey: "OpponentJerseyColor")
        UserDefaults.standard.set(true, forKey: "paleJerseyColor")
    }
    @IBAction func OpponentTeamGreen(_ sender: AnyObject) {
        opponentTeamColor = UIColor.green
        UserDefaults.standard.set("green", forKey: "OpponentJerseyColor")
        UserDefaults.standard.set(true, forKey: "paleJerseyColor")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    
    }
}
