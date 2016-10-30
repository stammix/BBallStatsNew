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
    }
    @IBAction func HomeTeamBlue(_ sender: AnyObject) {
        homeTeamColor = UIColor.blue
    }
    
    @IBAction func HomeTeamRed(_ sender: AnyObject) {
        homeTeamColor = UIColor.red
    }
    
    @IBAction func OpponentTeamBlack(_ sender: UIButton) {
        opponentTeamColor = UIColor.black
    }
    @IBAction func OpponentTeamBlue(_ sender: UIButton) {
         opponentTeamColor = UIColor.blue
    }
    @IBAction func OpponentTeamRed(_ sender: UIButton) {
         opponentTeamColor = UIColor.red
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    
    }
}
