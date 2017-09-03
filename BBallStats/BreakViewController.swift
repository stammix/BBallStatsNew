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

   
    @IBOutlet weak var QuarterBreakTitleLabel: UILabel!
    @IBOutlet weak var nextPeriodButtonLabel: UIButton!
    @IBOutlet weak var summaryLabel: UILabel!
    
    @IBAction func nextQuarterButton(_ sender: AnyObject) {
        if Period >= 4 {
        Period = Period + 1
            performSegue(withIdentifier: "breakToGameSegue", sender: self)
        } else {
        performSegue(withIdentifier: "breakToGameSegue", sender: self)
        }
      //  UserDefaults.standard.set("break", forKey: "minute")
      //  UserDefaults.standard.set("break", forKey: "selectedTeam")
        
    }
/*   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let whatVC = segue.destination as! WhatHappendViewController
         whatVC.Period = Period
   } */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("now its the \(Period) period")
        // Do any additional setup after loading the view.
    }
        override func viewWillAppear(_ animated: Bool) {
        if Period == 1 {
            print("Break after Period 1")
            summaryLabel.text = "Summary Quarter 1"
        } else if Period == 2 {
            print("Break after Period 2")
            summaryLabel.text = "Summary Quarter 2"
        } else if Period == 3 {
            print("Break after Period 3")
            summaryLabel.text = "Summary Quarter 3"
        } else if Period == 4 {
            print("Break after Period 4")
            summaryLabel.text = "Summary Quarter 4"
            QuarterBreakTitleLabel.text = "Game Summary"
            nextPeriodButtonLabel.setTitle("Save GameStats and upload", for: .normal)
        }
    }
}
