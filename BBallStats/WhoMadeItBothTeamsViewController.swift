//
//  WhoMadeItBothTeamsViewController.swift
//  BBallStats
//
//  Created by Fred Erik on 30.10.16.
//  Copyright © 2016 Fred Erik. All rights reserved.
//

import UIKit

class WhoMadeItBothTeamsViewController: UIViewController {
    
    @IBAction func T1P1Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P1", forKey: "player")
        UserDefaults.standard.set("T1", forKey: "selectedTeam")
        print("by T1P1")
        let _ = navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func T1P2Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P2", forKey: "player")
        UserDefaults.standard.set("T1", forKey: "selectedTeam")
        print("by T1P2")
        let _ = navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func T1P3Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P3", forKey: "player")
        UserDefaults.standard.set("T1", forKey: "selectedTeam")
        print("by T1P3")
        let _ = navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func T1P4Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P4", forKey: "player")
        UserDefaults.standard.set("T1", forKey: "selectedTeam")
        print("by T1P4")
        let _ = navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func T1P5Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P5", forKey: "player")
        UserDefaults.standard.set("T1", forKey: "selectedTeam")
        print("by T1P5")
        let _ = navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func T1P6Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P6", forKey: "nowPlayingPlayer")
        UserDefaults.standard.set("T1", forKey: "selectedTeam")
        print("by T1P6 - playerexchange")
        self.performSegue(withIdentifier: "BothTeamsToSubstitutionSegue", sender: self)
    }
    @IBAction func T1P7Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P7", forKey: "nowPlayingPlayer")
        UserDefaults.standard.set("T1", forKey: "selectedTeam")
        print("by T1P7 - playerexchange")
        self.performSegue(withIdentifier: "BothTeamsToSubstitutionSegue", sender: self)
    }
    
    @IBAction func T1P8Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P8", forKey: "nowPlayingPlayer")
        UserDefaults.standard.set("T1", forKey: "selectedTeam")
        print("by T1P8 - playerexchange")
        self.performSegue(withIdentifier: "BothTeamsToSubstitutionSegue", sender: self)
    }
    @IBAction func T1P9Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P9", forKey: "nowPlayingPlayer")
        UserDefaults.standard.set("T1", forKey: "selectedTeam")
        print("by T1P9 - playerexchange")
        self.performSegue(withIdentifier: "BothTeamsToSubstitutionSegue", sender: self)
    }
    @IBAction func T1P10Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P10", forKey: "nowPlayingPlayer")
        UserDefaults.standard.set("T1", forKey: "selectedTeam")
        print("by T1P10 - playerexchange")
        self.performSegue(withIdentifier: "BothTeamsToSubstitutionSegue", sender: self)
    }
    @IBAction func T1P11Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P11", forKey: "nowPlayingPlayer")
        UserDefaults.standard.set("T1", forKey: "selectedTeam")
        print("by T1P11 - playerexchange")
        self.performSegue(withIdentifier: "BothTeamsToSubstitutionSegue", sender: self)
    }
    @IBAction func T1P12Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P12", forKey: "nowPlayingPlayer")
        UserDefaults.standard.set("T1", forKey: "selectedTeam")
        print("by T1P12 - playerexchange")
        self.performSegue(withIdentifier: "BothTeamsToSubstitutionSegue", sender: self)
    }

    @IBAction func T2P1Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T2P1", forKey: "player")
        UserDefaults.standard.set("T2", forKey: "selectedTeam")
        print("by T2P1")
        let _ = navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func T2P2Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T2P2", forKey: "player")
        UserDefaults.standard.set("T2", forKey: "selectedTeam")
        print("by T2P2")
        let _ = navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func T2P3Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T2P3", forKey: "player")
        UserDefaults.standard.set("T2", forKey: "selectedTeam")
        print("by T2P3")
        let _ = navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func T2P4Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T2P4", forKey: "player")
        UserDefaults.standard.set("T2", forKey: "selectedTeam")
        print("by T2P4")
        let _ = navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func T2P5Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T2P5", forKey: "player")
        UserDefaults.standard.set("T2", forKey: "selectedTeam")
        print("by T2P5")
        let _ = navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func T2P6Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T2P6", forKey: "nowPlayingPlayer")
        UserDefaults.standard.set("T2", forKey: "selectedTeam")
        print("by T2P6 - playerexchange")
        self.performSegue(withIdentifier: "BothTeamsToSubstitutionSegue", sender: self)
    }
    @IBAction func T2P7Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T2P7", forKey: "nowPlayingPlayer")
        UserDefaults.standard.set("T2", forKey: "selectedTeam")
        print("by T2P7 - playerexchange")
        self.performSegue(withIdentifier: "BothTeamsToSubstitutionSegue", sender: self)
    }
    @IBAction func T2P8Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T2P8", forKey: "nowPlayingPlayer")
        UserDefaults.standard.set("T2", forKey: "selectedTeam")
        print("by T2P8 - playerexchange")
        self.performSegue(withIdentifier: "BothTeamsToSubstitutionSegue", sender: self)
    }
    @IBAction func T2P9Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P9", forKey: "nowPlayingPlayer")
        UserDefaults.standard.set("T2", forKey: "selectedTeam")
        print("by T2P9 - playerexchange")
        self.performSegue(withIdentifier: "BothTeamsToSubstitutionSegue", sender: self)
    }
    @IBAction func T2P10Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T2P10", forKey: "nowPlayingPlayer")
        UserDefaults.standard.set("T2", forKey: "selectedTeam")
        print("by T2P10 - playerexchange")
        self.performSegue(withIdentifier: "BothTeamsToSubstitutionSegue", sender: self)
    }
    @IBAction func T2P11Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T2P11", forKey: "nowPlayingPlayer")
        UserDefaults.standard.set("T2", forKey: "selectedTeam")
        print("by T2P11 - playerexchange")
        self.performSegue(withIdentifier: "BothTeamsToSubstitutionSegue", sender: self)
    }
    @IBAction func T2P12Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T2P12", forKey: "nowPlayingPlayer")
        UserDefaults.standard.set("T2", forKey: "selectedTeam")
        print("by T2P12 - playerexchange")
        self.performSegue(withIdentifier: "BothTeamsToSubstitutionSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
