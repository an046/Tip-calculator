//
//  SecondViewController.swift
//  Tip Calculator
//
//  Created by Anika Nair on 2/18/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var amountTextField: UITextField!
    
    @IBOutlet var TenPercentTipLabel: UILabel!
    
    @IBOutlet var FifteenPercentTipLabel: UILabel!
    
    @IBOutlet var TwentyPercentTipLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
  
    amountTextField.becomeFirstResponder()
        
    }
    
    @IBAction func CalculateTip(_ sender: Any) {
        let amount:Double = Double(amountTextField.text!) ?? 0.0
        let tenPercent = amount * 1.1
        let fifteenPercent = amount * 1.15
        let twentyPercent = amount * 1.2
        
        TenPercentTipLabel.text = String(format:"$%.2f",tenPercent)
        FifteenPercentTipLabel.text = String(format:"$%.2f",fifteenPercent)
        TwentyPercentTipLabel.text = String(format:"$%.2f",twentyPercent)
    }
   

}
