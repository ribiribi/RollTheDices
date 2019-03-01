//
//  ShowResults.swift
//  RollTheDices
//
//  Created by user148108 on 2/27/19.
//  Copyright © 2019 user148108. All rights reserved.
//

import UIKit


class ShowResults: UITableViewController {

    //Get managerDicesBag from ConfigDices view controller
    var managerDicesBag = [Int]()
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return managerDicesBag.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DiceResult", for: indexPath) as! ResultDiceCell
        let dice = managerDicesBag[indexPath.item]
        
        let diceResult = Int.random(in: 1 ..< dice+1)
        
        cell.resultDice.text = String(diceResult)
        cell.valueDice.text = "Dice's value: " + String(dice)

        return cell
    }
}
