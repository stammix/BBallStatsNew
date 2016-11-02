//
//  BreakViewController.swift
//  BBallStats
//
//  Created by Fred Erik on 02.11.16.
//  Copyright © 2016 Fred Erik. All rights reserved.
//

import UIKit

class BreakViewController: UIViewController {

    @IBAction func nextQuarterButton(_ sender: AnyObject) {
        UserDefaults.standard.set("break", forKey: "minute")
        performSegue(withIdentifier: "breakToGameSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
