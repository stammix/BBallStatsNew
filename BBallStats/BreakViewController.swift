//
//  BreakViewController.swift
//  BBallStats
//
//  Created by Fred Erik on 02.11.16.
//  Copyright © 2016 Fred Erik. All rights reserved.
//

import UIKit

class BreakViewController: UIViewController {
    
    var Period = 1
    var homeTeamScore = 0
    var guestTeamScore = 0
    var quarterLength = 10

   
    @IBOutlet weak var QuarterBreakTitleLabel: UILabel!

    @IBOutlet weak var nextQuarterButtonLabel: UIButton!
    
    @IBOutlet weak var summaryLabel: UILabel!
    
    @IBAction func nextQuarterButton(_ sender: AnyObject) {
        Period = Period + 1
        if Period < 4 {
            performSegue(withIdentifier: "breakToGameSegue", sender: self)
        } else if Period >= 4 && homeTeamScore == guestTeamScore {
        performSegue(withIdentifier: "breakToGameSegue", sender: self)
        } else {
        performSegue(withIdentifier: "breakToGameSegue", sender: self)
        }
      //  UserDefaults.standard.set("break", forKey: "minute")
      //  UserDefaults.standard.set("break", forKey: "selectedTeam")
        
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        override func viewWillAppear(_ animated: Bool) {
        if Period == 1 {
            print("*** Break after Period 1")
            summaryLabel.text = "Summary Quarter 1"
        } else if Period == 2 {
            print("*** Break after Period 2")
            summaryLabel.text = "Summary Quarter 2"
        } else if Period == 3 {
            print("*** Break after Period 3")
            summaryLabel.text = "Summary Quarter 3"
        } else if Period == 4 && homeTeamScore == guestTeamScore{
            print("*** Break after Period 4")
            summaryLabel.text = "Summary Quarter 4"
            QuarterBreakTitleLabel.text = "Game Summary"
            nextQuarterButtonLabel.setTitle("Overtime Baby", for: .normal)
        } else if Period > 4 && homeTeamScore == guestTeamScore{
            print("*** Break after OT \(Period - 4)")
            summaryLabel.text = "Summary OT \(Period - 4)"
            QuarterBreakTitleLabel.text = "OT Summary"
            nextQuarterButtonLabel.setTitle("Overtime Baby", for: .normal)
        } else if Period >= 4 {
            print("*** Break after Period 4")
            summaryLabel.text = "Summary Quarter 4"
            QuarterBreakTitleLabel.text = "Game Summary"
            nextQuarterButtonLabel.setTitle("Save GameStats and upload", for: .normal)
        }
    }
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let whatVC = segue.destination as! WhatHappendViewController
        whatVC.Period = Period
        whatVC.quarterLength = quarterLength
    }
}
