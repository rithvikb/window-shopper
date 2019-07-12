//
//  Wage.swift
//  window-shopper
//
//  Created by Rithvik Bobbili on 7/11/19.
//  Copyright © 2019 Rithvik Bobbili. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage:Double, andPrice price: Double) -> Int
    {
        return Int(ceil(price/wage))
    }
}
