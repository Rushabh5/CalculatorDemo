//
//  ButtonTypesModel.swift
//  CalulatorDemo
//
//  Created by Rushabh Shah on 08/10/24.
// Create model file for ButtonType

import Foundation
import SwiftUI


//Create button model for displaying all buttons
enum ButtonTypes: Hashable, CustomStringConvertible { //Hash: using them in collections like Set or as keys in Dictionary
    case digit(_ digit: Digits)
    case operation(_ operation: ArithmeticOperations)
    case decimal
    case equals
    case clear
    
    var description: String {
        switch self {
        case .digit(let digit):
            return digit.description
        case .operation(let operation):
            return operation.description
        case .decimal:
            return "."
        case .equals:
            return "="
        case .clear:
            return "C"
        }
    }
}
