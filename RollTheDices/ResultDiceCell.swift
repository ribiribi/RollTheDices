//
//  ResultDiceCell.swift
//  RollTheDices
//
//  Created by user148108 on 3/1/19.
//  Copyright © 2019 user148108. All rights reserved.
//

import UIKit

class ResultDiceCell: UITableViewCell {


    @IBOutlet weak var resultDice: UILabel!
    @IBOutlet weak var valueDice: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
