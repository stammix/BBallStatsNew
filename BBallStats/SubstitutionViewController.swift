//
//  SubstitutionViewController.swift
//  BBallStats
//
//  Created by Fred Erik on 30.10.16.
//  Copyright © 2016 Fred Erik. All rights reserved.
//

import UIKit

var changedPlayer = ""
var changedTeam = ""
var paleJerseyColor = true
var JerseyColor = UIColor.black

class SubstitutionViewController: UIViewController {
    
    @IBOutlet weak var SubButton1: UIButton!
    @IBOutlet weak var SubButton2: UIButton!
    @IBOutlet weak var SubButton3: UIButton!
    @IBOutlet weak var SubButton4: UIButton!
    @IBOutlet weak var SubButton5: UIButton!
    
    
    @IBAction func SubForP1(_ sender: UIButton) {
        changedPlayer = "P1"
        UserDefaults.standard.set("\(changedTeam)", forKey: "changedTeam")
        UserDefaults.standard.set("\(changedPlayer)", forKey: "exchangedPlayer")
        print("Sub for \(changedPlayer) of \(changedTeam)")
        let _ = navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func SubForP2(_ sender: UIButton) {
        changedPlayer = "P2"
        UserDefaults.standard.set("\(changedTeam)", forKey: "changedTeam")
        UserDefaults.standard.set("\(changedPlayer)", forKey: "exchangedPlayer")
        print("Sub for \(changedPlayer) of \(changedTeam)")
        let _ = navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func SubForP3(_ sender: UIButton) {
        changedPlayer = "P3"
        UserDefaults.standard.set("\(changedTeam)", forKey: "changedTeam")
        UserDefaults.standard.set("\(changedPlayer)", forKey: "exchangedPlayer")
        print("Sub for \(changedPlayer) of \(changedTeam)")
        let _ = navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func SubForP4(_ sender: UIButton) {
        changedPlayer = "P4"
        UserDefaults.standard.set("\(changedTeam)", forKey: "changedTeam")
        UserDefaults.standard.set("\(changedPlayer)", forKey: "exchangedPlayer")
        print("Sub for \(changedPlayer) of \(changedTeam)")
        let _ = navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func SubForP5(_ sender: UIButton) {
        changedPlayer = "P5"
        UserDefaults.standard.set("\(changedTeam)", forKey: "changedTeam")
        UserDefaults.standard.set("\(changedPlayer)", forKey: "exchangedPlayer")
        print("Sub for \(changedPlayer) of \(changedTeam)")
        let _ = navigationController?.popToRootViewController(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Find out which Team changed Players
        
        let teamOfChangingPlayerObject = UserDefaults.standard.object(forKey: "selectedTeam")
        if let teamOfChangingPlayer = teamOfChangingPlayerObject as? String {
            changedTeam = "\(teamOfChangingPlayer)"
        }
        //TeamColors
        if changedTeam == "T1" {
            let homeJerseyColorObject = UserDefaults.standard.object(forKey: "HomeJerseyColor")
            if let homeJerseyColor = homeJerseyColorObject as? String {
                if homeJerseyColor == "black" {
                    paleJerseyColor = false
                    JerseyColor = UIColor.black
                } else if homeJerseyColor == "blue" {
                    paleJerseyColor = false
                    JerseyColor = UIColor.blue
                } else if homeJerseyColor == "red" {
                    paleJerseyColor = false
                JerseyColor = UIColor.red
                } else if homeJerseyColor == "white" {
                    paleJerseyColor = true
                    JerseyColor = UIColor.white
                } else if homeJerseyColor == "yellow" {
                    paleJerseyColor = true
                    JerseyColor = UIColor.yellow
                } else if homeJerseyColor == "green" {
                    paleJerseyColor = true
                    JerseyColor = UIColor.green
                }
            }
            } else if changedTeam == "T2" {
            let opponentJerseyColorObject = UserDefaults.standard.object(forKey: "OpponentJerseyColor")
            if let opponentJerseyColor = opponentJerseyColorObject as? String {
                if opponentJerseyColor == "black" {
                    paleJerseyColor = false
                    JerseyColor = UIColor.black
                } else if opponentJerseyColor == "blue" {
                    paleJerseyColor = false
                    JerseyColor = UIColor.blue
                } else if opponentJerseyColor == "red" {
                    paleJerseyColor = false
                    JerseyColor = UIColor.red
                } else if opponentJerseyColor == "white" {
                    paleJerseyColor = true
                    JerseyColor = UIColor.white
                } else if opponentJerseyColor == "yellow" {
                    paleJerseyColor = true
                    JerseyColor = UIColor.yellow
                } else if opponentJerseyColor == "green" {
                    paleJerseyColor = true
                    JerseyColor = UIColor.green
                }
            }
        }
        
        
            if paleJerseyColor == true {
                SubButton1.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
                SubButton2.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
                SubButton3.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
                SubButton4.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
                SubButton5.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            } else if paleJerseyColor == false {
                SubButton1.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
                SubButton2.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
                SubButton3.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
                SubButton4.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
                SubButton5.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            }
        
        if paleJerseyColor == true {
            
        }
        
        if changedTeam == "T1" {
            SubButton1.backgroundColor = JerseyColor
            SubButton2.backgroundColor = JerseyColor
            SubButton3.backgroundColor = JerseyColor
            SubButton4.backgroundColor = JerseyColor
            SubButton5.backgroundColor = JerseyColor
        
       } else if changedTeam == "T2" {
            SubButton1.backgroundColor = JerseyColor
            SubButton2.backgroundColor = JerseyColor
            SubButton3.backgroundColor = JerseyColor
            SubButton4.backgroundColor = JerseyColor
            SubButton5.backgroundColor = JerseyColor
            }
        
        
    }

}
