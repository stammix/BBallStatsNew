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
