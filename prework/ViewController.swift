//
//  ViewController.swift
//  prework
//
//  Created by TJ on 8/31/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UILabel!
    @IBOutlet weak var numberOfPeople: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var dividedAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmountTextField.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }

    func updateTip() {
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        let persons = Double(numberOfPeople.text!) ?? 1
        
        //Get total tip
        let tipPercentages = [0.15, 0.18, 0.20];
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let dividedTotal = total/persons
        
        //Updating respective labels
        tipAmountLabel.text = currencyConvert(amount: tip)
        totalLabel.text = currencyConvert(amount: total)
        dividedAmount.text = currencyConvert(amount: dividedTotal)
    }
    func currencyConvert(amount: Double) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = Locale.current
        return numberFormatter.string(from: NSNumber(value: amount))!
    }
    @IBAction func calculateTip(_ sender: Any) {
        updateTip()
    }
    @IBAction func newBillAmount(_ sender: Any) {
        updateTip()
    }
    @IBAction func peopleChanged(_ sender: Any) {
        updateTip()
    }
    
}

