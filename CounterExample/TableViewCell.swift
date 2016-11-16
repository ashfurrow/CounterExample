//
//  TableViewCell.swift
//  CounterExample
//
//  Created by Ash Furrow on 2016-11-16.
//  Copyright © 2016 Colin Eberhardt. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    enum StepperChange {
        case increase, decrease
    }
    typealias StepperChangedClosure = (StepperChange) -> Void

    @IBOutlet weak var label: UILabel!
    var stepperChangedClosure: StepperChangedClosure?

    @IBAction func stepperChanged(_ sender: UIStepper) {
        if sender.value > 0 {
            stepperChangedClosure?(.increase)
        } else {
            stepperChangedClosure?(.decrease)
        }
        sender.value = 0
    }
    
}
