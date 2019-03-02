//
//  InitialViewController.swift
//  RollTheDices
//
//  Created by user148108 on 3/2/19.
//  Copyright © 2019 user148108. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var labelLetsRoll: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { timer in
            self.performSegue(withIdentifier: "toConfigDices", sender: nil)
        }
    }
}
