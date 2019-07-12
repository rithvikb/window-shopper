//
//  ViewController.swift
//  window-shopper
//
//  Created by Rithvik Bobbili on 7/11/19.
//  Copyright © 2019 Rithvik Bobbili. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTextF: CurrencyTextField!
    @IBOutlet weak var priceTextF: CurrencyTextField!
    

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = UIColor.orange
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(UIColor.white, for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wageTextF.inputAccessoryView = calcButton
        priceTextF.inputAccessoryView = calcButton
       
    }
    @objc func calculate() {
        if let textInWageF = wageTextF.text, let textInPriceF = priceTextF.text {
            if let wage = Double(textInWageF), let price = Double(textInPriceF)
            {
            view.endEditing(true)
            resultLabel.isHidden = false
            hoursLabel.isHidden = false;
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    
    @IBAction func clearPressed(_ sender: Any) {
        wageTextF.text = ""
        priceTextF.text = ""
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    
}

