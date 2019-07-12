//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Rithvik Bobbili on 7/11/19.
//  Copyright © 2019 Rithvik Bobbili. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: ((frame.size.height / 2) - (size / 2)), width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.8871421155, green: 0.8828564047, blue: 0.8914278262, alpha: 0.8008615154)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2825384438, green: 0.2700174451, blue: 0.2989401221, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeField()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeField()
    }
    
    func customizeField() {
        backgroundColor = #colorLiteral(red: 0.9880952381, green: 1, blue: 1, alpha: 0.2531910211)
        layer.cornerRadius = 5.0
        textAlignment = .center

        clipsToBounds = true
        
        if let p = placeholder{
            
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}
