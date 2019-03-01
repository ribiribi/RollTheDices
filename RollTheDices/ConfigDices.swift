//
//  ConfigDices.swift
//  RollTheDices
//
//  Created by user148108 on 2/26/19.
//  Copyright © 2019 user148108. All rights reserved.
//

import UIKit


class ConfigDices: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var pickerNumber1: UIPickerView!
    @IBOutlet weak var pickerNumber2: UIPickerView!
    
    @IBOutlet weak var pickerValue2: UIPickerView!
    @IBOutlet weak var pickerValue1: UIPickerView!
    
    let value = [2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,100]
    let number = [1,2,3,4,5,6,7,8,9,10]
    var dicesBag = [Dice]()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        dicesBag.removeAll()
    }
    
    
    // MARK: - Functions

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        switch pickerView {

        case pickerNumber1, pickerNumber2:

            return String (number[row])

        case pickerValue1, pickerValue2:

            return String(value[row])

        default:
            return String (number[row])
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        switch pickerView {
        case pickerNumber1, pickerNumber2:

            return number.count

        case pickerValue1, pickerValue2:

            return value.count

        default:
            return number.count
        }
        
    }

    
    func selectValuePickerView (_ pickerViewNumber: UIPickerView, _ pickerViewValue: UIPickerView){
        
        var selectedRow: Int
        var dice = Dice()
        
        selectedRow = pickerViewNumber.selectedRow(inComponent: 0)
        let numberSelected = number[selectedRow]
        
        selectedRow = pickerViewValue.selectedRow(inComponent: 0)
        let valueSelected = value[selectedRow]
        
        dice.numberOfDices = numberSelected
        dice.valueOfDices = valueSelected
        dicesBag.append(dice)
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toShowResultsTable"{
            
            var managerDicesBag = [Int]()
            
            selectValuePickerView(pickerNumber1, pickerValue1)
            selectValuePickerView(pickerNumber2, pickerValue2)
        
            for item in dicesBag{
                for itemNumber in 0...(item.numberOfDices)-1{
                 
                    managerDicesBag.append(item.valueOfDices)
                }
            }
            
            let controller = segue.destination as! ShowResults
            
            controller.managerDicesBag = managerDicesBag
        }
    }
}