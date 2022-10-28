//
//  ViewController.swift
//  exercicio21
//
//  Created by Otávio da Silva on 25/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var expressionLabel: UILabel!
    
    var operatorSignal = 0
    var calcValue: Double = 0
    var calcValue2: Double = 0
    var performingMath = false
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        if performingMath == true {
            expressionLabel.text = String(sender.tag)
            calcValue = Double(expressionLabel.text!) ?? 0
            performingMath = false
            
        }else{
            expressionLabel.text = expressionLabel.text! + String(sender.tag)
            calcValue = Double(expressionLabel.text!) ?? 0
            
        }
    }
    
    
    @IBAction func expressionsFunc(_ sender: UIButton) {
        if expressionLabel.text != "" {
            calcValue2 = Double(expressionLabel.text!) ?? 0
            if sender.tag == 11 {
                expressionLabel.text = "ˆ"
            }
            if sender.tag == 12 {
                expressionLabel.text = "%"
            }
            if sender.tag == 13 {
                expressionLabel.text = "/"
            }
            if sender.tag == 14 {
                expressionLabel.text = "x"
            }
            if sender.tag == 15 {
                expressionLabel.text = "-"
            }
            if sender.tag == 16 {
                expressionLabel.text = "+"
            }
            operatorSignal = sender.tag
            performingMath = true
        }
    }
    
    @IBAction func resultBotton(_ sender: UIButton) {
        if operatorSignal == 11 {
            expressionLabel.text = String(pow(calcValue2, calcValue))
        }
        if operatorSignal == 12 {
            expressionLabel.text = String((calcValue2 * calcValue) / 100)
        }
        if operatorSignal == 13 {
            expressionLabel.text = String(calcValue2 / calcValue)
        }
        if operatorSignal == 14 {
            expressionLabel.text = String(calcValue2 * calcValue)
        }
        if operatorSignal == 15 {
            expressionLabel.text = String(calcValue2 - calcValue)
        }
        if operatorSignal == 16 {
            expressionLabel.text = String(calcValue2 + calcValue)
        }
    }
    @IBAction func acFunc(_ sender: UIButton) {
        clearAll()
    }
    
    @IBAction func pointTap(_ sender: UIButton) {
        if expressionLabel.text!.isEmpty {
            expressionLabel.text = "0."
        }else {
            if !expressionLabel.text!.contains(".") {
                expressionLabel.text! +=  "."
                
            }
        }
        calcValue = Double(expressionLabel.text!) ?? 0
    }
    func clearAll() {
        expressionLabel.text = ""
        calcValue = 0
        calcValue2 = 0
    }
}
