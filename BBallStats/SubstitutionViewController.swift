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

class SubstitutionViewController: UIViewController {
    
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

        // Do any additional setup after loading the view.
        let teamOfChangingPlayerObject = UserDefaults.standard.object(forKey: "selectedTeam")
        
        if let teamOfChangingPlayer = teamOfChangingPlayerObject as? String {
            changedTeam = "\(teamOfChangingPlayer)"
        }
        
    }


}
