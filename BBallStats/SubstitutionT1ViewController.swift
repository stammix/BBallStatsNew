//
//  SubstitutionT1ViewController.swift
//  BballStats
//
//  Created by Fred Erik on 17.07.16.
//  Copyright © 2016 Fred Erik. All rights reserved.
//

import UIKit

class SubstitutionT1ViewController: UIViewController {
    @IBAction func SubForT1P1(_ sender: UIButton) {
        UserDefaults.standard.set("T1P1", forKey: "exchangedPlayer")
        print("Sub for T1P6")
        let _ = navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func SubForT1P2(_ sender: UIButton) {
        UserDefaults.standard.set("T1P1", forKey: "exchangedPlayer")
        print("Sub for T1P7")
        let _ = navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func SubForT1P3(_ sender: UIButton) {
        UserDefaults.standard.set("T1P1", forKey: "exchangedPlayer")
        print("Sub for T1P8")
        let _ = navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func SubForT1P4(_ sender: UIButton) {
        UserDefaults.standard.set("T1P1", forKey: "exchangedPlayer")
        print("Sub for T1P9")
        let _ = navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func SubForT1P5(_ sender: UIButton) {
        UserDefaults.standard.set("T1P1", forKey: "exchangedPlayer")
        print("Sub for T1P10")
        let _ = navigationController?.popToRootViewController(animated: true)
    }
}
