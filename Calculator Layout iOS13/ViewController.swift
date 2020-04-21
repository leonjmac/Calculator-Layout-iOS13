//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calcDisplay: UILabel!
    var calcDisplayValue:String?
    var functionKeyPressed = false
    var prevValue = 0.0
    var currentValue = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetCalculator()
    }
    
    @IBAction func functionKeyPressed(_ sender:UIButton) {
        functionKeyPressed = true
        applyFunction()
        currentValue = 0.0
    }
    
    @IBAction func numberKeyPressed(_ sender:UIButton) {
        // unpack the number pressed
        
        // Invalidate functionkey pressed
        functionKeyPressed = false
        
        // update display
        
    }
    
    @IBAction func modifierKeyPressed(_ sender:UIButton) {
        guard let modifier = sender.currentTitle else {
            return
        }
        
        switch modifier {
        case "%":
            if (currentValue != 0.0) {
                // Divide
            }
        case "AC":
            resetCalculator()
        case "+/-":
            currentValue = -currentValue
            refreshDisplay(withValue: currentValue)
        default:
            return
        }
    }
    
    func applyFunction() {
        
    }
    
    func refreshDisplay(withValue value:Double) {
        self.prevValue = currentValue
        // if already contains ".", prevent subsequent
        
    }
    
    func resetCalculator() {
        prevValue = 0.0
        currentValue = 0.0
        functionKeyPressed = false
        refreshDisplay(withValue: 0.0)
    }
}
