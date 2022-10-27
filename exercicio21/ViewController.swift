//
//  ViewController.swift
//  exercicio21
//
//  Created by Otávio da Silva on 25/10/22.
//

import UIKit

class ViewController: UIViewController {
    var workings = ""
    @IBOutlet weak var numberView: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
           clearAll()
    }
    
    @IBAction func equalTap(_ sender: UIButton) {

      let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let stringResult = formatResult(result: result)
        resultLabel.text = stringResult
        print(result)
        
    }
    
    func formatResult(result: Double) -> String {
        
        return String(format: "%.2f", result)
    }
    
    func addToWorkings(value: String) {
        workings += value
        numberView.text = workings
    }
    
    func clearAll() {
        numberView.text = "0"
        resultLabel.text = ""
        workings = ""
    }
    
    @IBAction func backTap(_ sender: UIButton) {
        if !workings.isEmpty {
            workings.removeLast()
            numberView.text = workings
        }
    }
    
    
    @IBAction func divisionTap(_ sender: UIButton) {
        addToWorkings(value: "/")
    }
    
    @IBAction func percentTap(_ sender: UIButton) {
        addToWorkings(value: "%")
    }
    @IBAction func multiplicationTap(_ sender: UIButton) {
        addToWorkings(value: "*")
    }
    
    @IBAction func subtractionTap(_ sender: UIButton) {
        addToWorkings(value: "-")
    }
    
    @IBAction func plusTap(_ sender: UIButton) {
        addToWorkings(value: "+")
    }
    
    @IBAction func zeroTap(_ sender: UIButton) {
        addToWorkings(value: "0")
    }
    
    @IBAction func oneTap(_ sender: UIButton) {
        addToWorkings(value: "1")
    }
    
    @IBAction func twoTap(_ sender: UIButton) {
        addToWorkings(value: "2")
    }
    
    @IBAction func threeTap(_ sender: UIButton) {
        addToWorkings(value: "3")
    }
    
    @IBAction func fourTap(_ sender: UIButton) {
        addToWorkings(value: "4")
    }
    
    @IBAction func fiveTap(_ sender: UIButton) {
        addToWorkings(value: "5")
    }
    
    @IBAction func sixTap(_ sender: UIButton) {
        addToWorkings(value: "6")
    }
    
    @IBAction func sevenTap(_ sender: UIButton) {
        addToWorkings(value: "7")
    }
    
    @IBAction func eightTap(_ sender: UIButton) {
        addToWorkings(value: "8")
    }
    
    @IBAction func nineTap(_ sender: UIButton) {
        addToWorkings(value: "9")
    }
    @IBAction func allClearTap(_ sender: UIButton) {
        clearAll()
        
    }
    @IBAction func pointTap(_ sender: UIButton) {
        addToWorkings(value: ".")
    }
    
}

