//
//  WhoMadeItBothTeamsViewController.swift
//  BBallStats
//
//  Created by Fred Erik on 30.10.16.
//  Copyright © 2016 Fred Erik. All rights reserved.
//

import UIKit

class WhoMadeItBothTeamsViewController: UIViewController {
    
    var homeTeamColor = UIColor.white
    var guestTeamColor = UIColor.black
    var homePaleJerseyColor = true
    var opponentPaleJerseyColor = false
    var tappedAction = "2pointer"
    var actualMinute = 1
    
    
    @IBOutlet weak var T1Jersey1Button: UIButton!
    @IBOutlet weak var T1Jersey2Button: UIButton!
    @IBOutlet weak var T1Jersey3Button: UIButton!
    @IBOutlet weak var T1Jersey4Button: UIButton!
    @IBOutlet weak var T1Jersey5Button: UIButton!
    @IBOutlet weak var T1Jersey6Button: UIButton!
    @IBOutlet weak var T1Jersey7Button: UIButton!
    @IBOutlet weak var T1Jersey8Button: UIButton!
    @IBOutlet weak var T1Jersey9Button: UIButton!
    @IBOutlet weak var T1Jersey10Button: UIButton!
    @IBOutlet weak var T1Jersey11Button: UIButton!
    @IBOutlet weak var T1Jersey12Button: UIButton!
    
    @IBOutlet weak var T2Jersey1Button: UIButton!
    @IBOutlet weak var T2Jersey2Button: UIButton!
    @IBOutlet weak var T2Jersey3Button: UIButton!
    @IBOutlet weak var T2Jersey4Button: UIButton!
    @IBOutlet weak var T2Jersey5Button: UIButton!
    @IBOutlet weak var T2Jersey6Button: UIButton!
    @IBOutlet weak var T2Jersey7Button: UIButton!
    @IBOutlet weak var T2Jersey8Button: UIButton!
    @IBOutlet weak var T2Jersey9Button: UIButton!
    @IBOutlet weak var T2Jersey10Button: UIButton!
    @IBOutlet weak var T2Jersey11Button: UIButton!
    @IBOutlet weak var T2Jersey12Button: UIButton!
    
    
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
        
 /*       //TeamColors
        let homeJerseyColorPersistentObject = UserDefaults.standard.object(forKey: "HomeJerseyColor")
        if let homeJerseyColorPersistent = homeJerseyColorPersistentObject as? String {
            if homeJerseyColorPersistent == "black" {
                homePaleJerseyColor = false
                homeJerseyColor = UIColor.black
            } else if homeJerseyColorPersistent == "blue" {
                homePaleJerseyColor = false
                homeJerseyColor = UIColor.blue
            } else if homeJerseyColorPersistent == "red" {
                homePaleJerseyColor = false
                homeJerseyColor = UIColor.red
            } else if homeJerseyColorPersistent == "white" {
                homePaleJerseyColor = true
                homeJerseyColor = UIColor.white
            } else if homeJerseyColorPersistent == "yellow" {
                homePaleJerseyColor = true
                homeJerseyColor = UIColor.yellow
            } else if homeJerseyColorPersistent == "green" {
                homePaleJerseyColor = true
                homeJerseyColor = UIColor.green
            }
        }
        
        let opponentJerseyColorPerstistentObject = UserDefaults.standard.object(forKey: "OpponentJerseyColor")
        if let opponentJerseyColorPersistent = opponentJerseyColorPerstistentObject as? String {
            if opponentJerseyColorPersistent == "black" {
                opponentPaleJerseyColor = false
                opponentJerseyColor = UIColor.black
            } else if opponentJerseyColorPersistent == "blue" {
                opponentPaleJerseyColor = false
                opponentJerseyColor = UIColor.blue
            } else if opponentJerseyColorPersistent == "red" {
                opponentPaleJerseyColor = false
                opponentJerseyColor = UIColor.red
            } else if opponentJerseyColorPersistent == "white" {
                opponentPaleJerseyColor = true
                opponentJerseyColor = UIColor.white
            } else if opponentJerseyColorPersistent == "yellow" {
                opponentPaleJerseyColor = true
                opponentJerseyColor = UIColor.yellow
            } else if opponentJerseyColorPersistent == "green" {
                opponentPaleJerseyColor = true
                opponentJerseyColor = UIColor.green
            }
        }
        
        if homePaleJerseyColor == true {
            T1Jersey1Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T1Jersey1Button.setTitleColor(UIColor.black, for: .normal)
            T1Jersey2Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T1Jersey2Button.setTitleColor(UIColor.black, for: .normal)
            T1Jersey3Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T1Jersey3Button.setTitleColor(UIColor.black, for: .normal)
            T1Jersey4Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T1Jersey4Button.setTitleColor(UIColor.black, for: .normal)
            T1Jersey5Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T1Jersey5Button.setTitleColor(UIColor.black, for: .normal)
            T1Jersey6Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T1Jersey6Button.setTitleColor(UIColor.black, for: .normal)
            T1Jersey7Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T1Jersey7Button.setTitleColor(UIColor.black, for: .normal)
            T1Jersey8Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T1Jersey8Button.setTitleColor(UIColor.black, for: .normal)
            T1Jersey9Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T1Jersey9Button.setTitleColor(UIColor.black, for: .normal)
            T1Jersey10Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T1Jersey10Button.setTitleColor(UIColor.black, for: .normal)
            T1Jersey11Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T1Jersey11Button.setTitleColor(UIColor.black, for: .normal)
            T1Jersey12Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T1Jersey12Button.setTitleColor(UIColor.black, for: .normal)
        } else if homePaleJerseyColor == false {
            T1Jersey1Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T1Jersey2Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T1Jersey3Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T1Jersey4Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T1Jersey5Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T1Jersey6Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T1Jersey7Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T1Jersey8Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T1Jersey9Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T1Jersey10Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T1Jersey11Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T1Jersey12Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
        }
        
        if opponentPaleJerseyColor == true {
            T2Jersey1Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T2Jersey1Button.setTitleColor(UIColor.black, for: .normal)
            T2Jersey2Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T2Jersey2Button.setTitleColor(UIColor.black, for: .normal)
            T2Jersey3Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T2Jersey3Button.setTitleColor(UIColor.black, for: .normal)
            T2Jersey4Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T2Jersey4Button.setTitleColor(UIColor.black, for: .normal)
            T2Jersey5Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T2Jersey5Button.setTitleColor(UIColor.black, for: .normal)
            T2Jersey6Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T2Jersey6Button.setTitleColor(UIColor.black, for: .normal)
            T2Jersey7Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T2Jersey7Button.setTitleColor(UIColor.black, for: .normal)
            T2Jersey8Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T2Jersey8Button.setTitleColor(UIColor.black, for: .normal)
            T2Jersey9Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T2Jersey9Button.setTitleColor(UIColor.black, for: .normal)
            T2Jersey10Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T2Jersey10Button.setTitleColor(UIColor.black, for: .normal)
            T2Jersey11Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T2Jersey11Button.setTitleColor(UIColor.black, for: .normal)
            T2Jersey12Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
            T2Jersey12Button.setTitleColor(UIColor.black, for: .normal)
        } else if opponentPaleJerseyColor == false {
            T2Jersey1Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T2Jersey2Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T2Jersey3Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T2Jersey4Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T2Jersey5Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T2Jersey6Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T2Jersey7Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T2Jersey8Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T2Jersey9Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T2Jersey10Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T2Jersey11Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
            T2Jersey12Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
        }
        
        T1Jersey1Button.backgroundColor = homeJerseyColor
        T1Jersey2Button.backgroundColor = homeJerseyColor
        T1Jersey3Button.backgroundColor = homeJerseyColor
        T1Jersey4Button.backgroundColor = homeJerseyColor
        T1Jersey5Button.backgroundColor = homeJerseyColor
        T1Jersey6Button.backgroundColor = homeJerseyColor
        T1Jersey7Button.backgroundColor = homeJerseyColor
        T1Jersey8Button.backgroundColor = homeJerseyColor
        T1Jersey9Button.backgroundColor = homeJerseyColor
        T1Jersey10Button.backgroundColor = homeJerseyColor
        T1Jersey11Button.backgroundColor = homeJerseyColor
        T1Jersey12Button.backgroundColor = homeJerseyColor
        
        T2Jersey1Button.backgroundColor = opponentJerseyColor
        T2Jersey2Button.backgroundColor = opponentJerseyColor
        T2Jersey3Button.backgroundColor = opponentJerseyColor
        T2Jersey4Button.backgroundColor = opponentJerseyColor
        T2Jersey5Button.backgroundColor = opponentJerseyColor
        T2Jersey6Button.backgroundColor = opponentJerseyColor
        T2Jersey7Button.backgroundColor = opponentJerseyColor
        T2Jersey8Button.backgroundColor = opponentJerseyColor
        T2Jersey9Button.backgroundColor = opponentJerseyColor
        T2Jersey10Button.backgroundColor = opponentJerseyColor
        T2Jersey11Button.backgroundColor = opponentJerseyColor
        T2Jersey12Button.backgroundColor = opponentJerseyColor
   */ } 
}


