//
//  BreakViewController.swift
//  BBallStats
//
//  Created by Fred Erik on 02.11.16.
//  Copyright © 2016 Fred Erik. All rights reserved.
//

import UIKit

class BreakViewController: UIViewController {

   
    @IBOutlet weak var QuarterBreakTitleLabel: UILabel!
    @IBOutlet weak var nextPeriodButtonLabel: UIButton!
    @IBOutlet weak var summaryLabel: UILabel!
    
    @IBAction func nextQuarterButton(_ sender: AnyObject) {
      //  UserDefaults.standard.set("break", forKey: "minute")
        UserDefaults.standard.set("break", forKey: "selectedTeam")
        performSegue(withIdentifier: "breakToGameSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
        override func viewWillAppear(_ animated: Bool) {
    let lastPeriodObject = UserDefaults.standard.object(forKey: "period")
    if let lastPeriod = lastPeriodObject as? String {
        if lastPeriod == "1" {
            print("Break after Period 1")
            summaryLabel.text = "Summary Quarter 1"
            UserDefaults.standard.set("2", forKey: "period")
            UserDefaults.standard.set("10", forKey: "currentMinute")
        } else if lastPeriod == "2" {
            print("Break after Period 2")
            summaryLabel.text = "Summary Quarter 2"
            UserDefaults.standard.set("3", forKey: "period")
            UserDefaults.standard.set("20", forKey: "currentMinute")
        } else if lastPeriod == "3" {
            print("Break after Period 3")
            summaryLabel.text = "Summary Quarter 3"
            UserDefaults.standard.set("4", forKey: "period")
            UserDefaults.standard.set("30", forKey: "minute")
        } else if lastPeriod == "4" {
            print("Break after Period 4")
            summaryLabel.text = "Summary Quarter 4"
            QuarterBreakTitleLabel.text = "Game Summary"
            nextPeriodButtonLabel.setTitle("Save GameStats and upload", for: .normal)
            UserDefaults.standard.set("resetGame", forKey: "action")
        }
    }
}
}
