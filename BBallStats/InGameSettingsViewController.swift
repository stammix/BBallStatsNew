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
    var homeColorPale = true
    var guestColorPale = false
    var Period = 1
    var Minute = 1
    var homeTeamScore = 0
    var guestTeamScore = 0
    var collectStatsForBothTeams = 1
    
  

    @IBOutlet weak var teamSwitch: UISwitch!
    @IBAction func collectBothSwitch(_ sender: UISwitch) {
        if collectStatsForBothTeams == 1 {
            collectStatsForBothTeams = 2
        } else if collectStatsForBothTeams == 2 {
            collectStatsForBothTeams = 1
        }
    }
   
    @IBAction func resetGameButton(_ sender: AnyObject) {
        Period = 1
        Minute = 1
        homeTeamScore = 0
        guestTeamScore = 0
    }

    @IBAction func tippOffButton(_ sender: AnyObject) {
         self.performSegue(withIdentifier: "SettingsToGameSegue", sender: self)
    }
    
    @IBAction func HomeTeamBlack(_ sender: AnyObject) {
        homeTeamColor = UIColor.black
        homeColorPale = false
    }
    @IBAction func HomeTeamBlue(_ sender: AnyObject) {
        homeTeamColor = UIColor.blue
        homeColorPale = false
    }
    
    @IBAction func HomeTeamRed(_ sender: AnyObject) {
        homeTeamColor = UIColor.red
        homeColorPale = true
    }
    @IBAction func HomeTeamWhite(_ sender: AnyObject) {
        homeTeamColor = UIColor.white
        homeColorPale = true
    }
    
    @IBAction func HomeTeamYellow(_ sender: AnyObject) {
        homeTeamColor = UIColor.yellow
        homeColorPale = true
    }
    @IBAction func HomeTeamGreen(_ sender: AnyObject) {
        homeTeamColor = UIColor.green
        homeColorPale = false
    }
    
    @IBAction func OpponentTeamBlack(_ sender: UIButton) {
        opponentTeamColor = UIColor.black
        homeColorPale = false
    }
    @IBAction func OpponentTeamBlue(_ sender: UIButton) {
        opponentTeamColor = UIColor.blue
        homeColorPale = false
    }
    @IBAction func OpponentTeamRed(_ sender: UIButton) {
        opponentTeamColor = UIColor.red
        homeColorPale = false
    }
    @IBAction func OpponentTeamWhite(_ sender: AnyObject) {
        opponentTeamColor = UIColor.white
        homeColorPale = true
        
    }
    @IBAction func OpponentTeamYellow(_ sender: AnyObject) {
        opponentTeamColor = UIColor.yellow
        homeColorPale = true
    }
    @IBAction func OpponentTeamGreen(_ sender: AnyObject) {
        opponentTeamColor = UIColor.green
        homeColorPale = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let NVC = segue.destination as! UINavigationController
        let whatVC = NVC.topViewController as! WhatHappendViewController
        whatVC.homeTeamColor = homeTeamColor
        whatVC.guestTeamColor = opponentTeamColor
        whatVC.homeColorPale = false
        whatVC.guestColorPale = true
        whatVC.Period = Period
        whatVC.currentMinute = Minute
        whatVC.currentScoreTeamOne = homeTeamScore
        whatVC.currentScoreTeamTwo = guestTeamScore
        whatVC.collectStatsForBothTeams = collectStatsForBothTeams
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if collectStatsForBothTeams == 2 {
            teamSwitch.setOn(true, animated: true)
        }
        
        // Do any additional setup after loading the view.
    
    }
}
