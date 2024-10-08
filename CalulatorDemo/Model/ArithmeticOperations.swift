//
//  ArithmeticOperation.swift
//  CalulatorDemo
//
//  Created by Rushabh Shah on 08/10/24.
//

import Foundation

enum ArithmeticOperations: CaseIterable, CustomStringConvertible {
    case addition, subtraction, multiplication, division
    
    var description: String {
        switch self {
        case .addition:
            return "+"
        case .subtraction:
            return "−"
        case .multiplication:
            return "×"
        case .division:
            return "÷"
        }
    }
}
