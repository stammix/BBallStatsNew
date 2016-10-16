//
//  SettingsViewController.swift
//  BBallStats
//
//  Created by Fred Erik on 16.10.16.
//  Copyright © 2016 Fred Erik. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    var collectForBothTeams = false
    var homeTeamColor = UIColor.white
    var opponentTeamColor = UIColor.black
    
  
    @IBOutlet weak var SwitchState: UISwitch!
    @IBAction func OneOrBothTeamsSwitch(_ sender: UISwitch) {
        if SwitchState.isOn {
            collectForBothTeams = true
        } else {
            collectForBothTeams = false
        }
    
    }
    @IBAction func tippOffButton(_ sender: AnyObject) {
        UserDefaults.standard.set("\(collectForBothTeams)", forKey: "OneOrTwoTeams")
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
