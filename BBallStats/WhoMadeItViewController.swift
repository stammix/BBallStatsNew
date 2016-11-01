//
//  WhoMadeItViewController.swift
//  BballStats
//
//  Created by Fred Erik on 16.07.16.
//  Copyright © 2016 Fred Erik. All rights reserved.
//

import UIKit
import CoreData

class WhoMadeItViewController: UIViewController {
    
    var JerseyColor = UIColor.white
    
  
    @IBOutlet weak var jersey1Button: UIButton!
    @IBOutlet weak var jersey2Button: UIButton!
    @IBOutlet weak var jersey3Button: UIButton!
    @IBOutlet weak var jersey4Button: UIButton!
    @IBOutlet weak var jersey5Button: UIButton!
    @IBOutlet weak var jersey6Button: UIButton!
    @IBOutlet weak var jersey7Button: UIButton!
    @IBOutlet weak var jersey8Button: UIButton!
    @IBOutlet weak var jersey9Button: UIButton!
    @IBOutlet weak var jersey10Button: UIButton!
    @IBOutlet weak var jersey11Button: UIButton!
    @IBOutlet weak var jersey12Button: UIButton!
    
    
    
    @IBAction func T1P1Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P1", forKey: "player")
        print("by T1P1")
        let _ = navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func T1P2Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P2", forKey: "player")
        print("by T1P2")
        let _ = navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func T1P3Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P3", forKey: "player")
        print("by T1P3")
        let _ = navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func T1P4Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P4", forKey: "player")
        print("by T1P4")
      let _ = navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func T1P5Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P5", forKey: "player")
        print("by T1P5")
       let _ = navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func T1P6Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P6", forKey: "nowPlayingPlayer")
        print("by T1P6 - playerexchange")
        self.performSegue(withIdentifier: "WhoMadeItToSubstituionT1Segue", sender: self)
    }
    @IBAction func T1P7Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P7", forKey: "nowPlayingPlayer")
        print("by T1P7 - playerexchange")
        self.performSegue(withIdentifier: "WhoMadeItToSubstituionT1Segue", sender: self)
    }
    
    @IBAction func T1P8Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P8", forKey: "nowPlayingPlayer")
        print("by T1P8 - playerexchange")
        self.performSegue(withIdentifier: "WhoMadeItToSubstituionT1Segue", sender: self)
    }
    @IBAction func T1P9Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P9", forKey: "nowPlayingPlayer")
        print("by T1P9 - playerexchange")
        self.performSegue(withIdentifier: "WhoMadeItToSubstituionT1Segue", sender: self)
    }
    @IBAction func T1P10Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P10", forKey: "nowPlayingPlayer")
        print("by T1P10 - playerexchange")
        self.performSegue(withIdentifier: "WhoMadeItToSubstituionT1Segue", sender: self)
    }
    @IBAction func T1P11Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P11", forKey: "nowPlayingPlayer")
        print("by T1P11 - playerexchange")
        self.performSegue(withIdentifier: "WhoMadeItToSubstituionT1Segue", sender: self)
    }
    @IBAction func T1P12Pressed(_ sender: UIButton) {
        UserDefaults.standard.set("T1P12", forKey: "nowPlayingPlayer")
        print("by T1P12 - playerexchange")
        self.performSegue(withIdentifier: "WhoMadeItToSubstituionT1Segue", sender: self)
    }
    
     override func viewDidLoad() {
     super.viewDidLoad()
     //TeamColors
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
     
     if paleJerseyColor == true {
     jersey1Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
        jersey1Button.setTitleColor(UIColor.black, for: .normal)
     jersey2Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
        jersey2Button.setTitleColor(UIColor.black, for: .normal)
     jersey3Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
        jersey3Button.setTitleColor(UIColor.black, for: .normal)
     jersey4Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
        jersey4Button.setTitleColor(UIColor.black, for: .normal)
     jersey5Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
        jersey5Button.setTitleColor(UIColor.black, for: .normal)
    jersey6Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
        jersey6Button.setTitleColor(UIColor.black, for: .normal)
    jersey7Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
        jersey7Button.setTitleColor(UIColor.black, for: .normal)
    jersey8Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
        jersey8Button.setTitleColor(UIColor.black, for: .normal)
    jersey9Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
        jersey9Button.setTitleColor(UIColor.black, for: .normal)
    jersey10Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
        jersey10Button.setTitleColor(UIColor.black, for: .normal)
    jersey11Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
        jersey11Button.setTitleColor(UIColor.black, for: .normal)
    jersey12Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyBlack.png"), for: .normal)
        jersey12Button.setTitleColor(UIColor.black, for: .normal)
     } else if paleJerseyColor == false {
     jersey1Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
     jersey2Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
     jersey3Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
     jersey4Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
     jersey5Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
        jersey6Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
        jersey7Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
        jersey8Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
        jersey9Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
        jersey10Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
        jersey11Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
        jersey12Button.setBackgroundImage(#imageLiteral(resourceName: "BballStatsJerseyWhite.png"), for: .normal)
     }
     
     jersey1Button.backgroundColor = JerseyColor
     jersey2Button.backgroundColor = JerseyColor
     jersey3Button.backgroundColor = JerseyColor
     jersey4Button.backgroundColor = JerseyColor
     jersey5Button.backgroundColor = JerseyColor
        jersey6Button.backgroundColor = JerseyColor
        jersey7Button.backgroundColor = JerseyColor
        jersey8Button.backgroundColor = JerseyColor
        jersey9Button.backgroundColor = JerseyColor
        jersey10Button.backgroundColor = JerseyColor
        jersey11Button.backgroundColor = JerseyColor
        jersey12Button.backgroundColor = JerseyColor

        }

    
  /* @IBAction func save(_ sender: AnyObject) {
     
        let appDelegate = UIApplication.shared.delegate as! AppDelegate // UIApplication.shared().delegate as! AppDelegate is now UIApplication.shared.delegate as! AppDelegate
     
        let context = appDelegate.persistentContainer.viewContext
     
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
     
        newUser.setValue("kirsten", forKey: "username")
        newUser.setValue("myPass", forKey: "password")
        newUser.setValue(35, forKey: "age")
     
        do {
     
            try context.save()
     
            print("Saved")
     
        } catch {
     
            print("There was an error")
            
        }
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        
        request.returnsObjectsAsFaults = false
        
        do {
            
            let results = try context.fetch(request)
            
            if results.count > 0 {
                
                for result in results as! [NSManagedObject] {
                    
                    if let username = result.value(forKey: "username") as? String {
                        
                        print(username)
                        
                    }
                    
                }
                
                
            } else {
                
                print("No results")
                
            }
            
            
        } catch {
            
            print("Couldn't fetch results")
            
        }
     }
 */
    
}
