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

        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { timer in
            
            UIView.animate(withDuration: 3, delay: 0.0, options: UIView.AnimationOptions.curveEaseOut, animations: {
                self.labelLetsRoll.alpha = 1
                
            }, completion: nil)
        }
        
        Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) { timer in
            self.performSegue(withIdentifier: "toConfigDices", sender: nil)
            
        }
    }
}
