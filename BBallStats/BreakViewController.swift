//
//  BreakViewController.swift
//  BBallStats
//
//  Created by Fred Erik on 02.11.16.
//  Copyright © 2016 Fred Erik. All rights reserved.
//

import UIKit
import CoreData

class BreakViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var Period = 1
    var actualMinute = 1
    var homeTeamName = ""
    var guestTeamName = ""
    var homeTeamScore = 0
    var guestTeamScore = 0
    var quarterLength = 10
    var player = 1
    var playerToSwitchIn = 6
    var chosenTeam = 1
    var tappedAction = ""
    var pointsOfAction = 0

   
    @IBOutlet weak var statSummaryTableView: UITableView!
    
    @IBOutlet weak var QuarterBreakTitleLabel: UILabel!

    @IBOutlet weak var nextQuarterButtonLabel: UIButton!
    
    @IBAction func testButton(_ sender: UIButton) {
   /*     homeTeamName = "Hans"
        player = 15
        tappedAction = "crunch"
        pointsOfAction = 23
        print("*** \(homeTeamName)")
        statSummaryTableView.reloadData()
     */
    }
    
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
        
        
        statSummaryTableView.dataSource = self
        statSummaryTableView.delegate = self
        
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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // return stats.count
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
//      let stat = stats[indexPath.row]
//      cell.textLabel?.text = "\(stat.homeTeam), \(stat.player), \(stat.action), \(stat.points)"
        return cell
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let whatVC = segue.destination as! WhatHappendViewController
        whatVC.Period = Period
        whatVC.quarterLength = quarterLength
    }

}
