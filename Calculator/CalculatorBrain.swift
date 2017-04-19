//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Dmitriy Makhov on 16/04/2017.
//  Copyright © 2017 Dmitriy Makhov. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    //? - means that the variable doesn't have initial value (isn't initialised, equals nil)
    private var accumulator: Double?
    
    private var operations: Dictionary<String,Double> = [
        "π": Double.pi,
        "e": M_E
    ]
    
    mutating func performOperation(_ symbol: String) {
        if let constant = operations[symbol] {
            accumulator = constant
        }
    }
    
    mutating func setOperand(_ operand: Double) {
        accumulator = operand
    }
    
    //the variable may be uninitialised, so we define it as an optional (mark it with ?)
    var result: Double? {
        
        get{
            return accumulator
        }
        
    }
    
    
}
