//
//  CalcuViewModelRS.swift
//  CalulatorDemo
//
//  Created by Rushabh Shah on 07/10/24.
//
import Foundation

extension ContentView {
    final class CalculatorViewModel: ObservableObject {
        
        // MARK: - Properties
        @Published private var calculator = CalculatorModel()
        
        var displayText: String {
            return calculator.displayText
        }
        
        var buttonRows: [[ButtonTypes]] {
            [[.digit(.seven), .digit(.eight), .digit(.nine), .operation(.division)],
             [.digit(.four), .digit(.five), .digit(.six), .operation(.multiplication)],
             [.digit(.one), .digit(.two), .digit(.three), .operation(.subtraction)],
             [.digit(.zero), .decimal, .equals, .operation(.addition)]]
        }
        
        // MARK: - Actions
        func performAction(for buttonType: ButtonTypes) {
            switch buttonType {
            case .digit(let digit):
                calculator.setDigit(digit)
            case .operation(let operation):
                calculator.setOperation(operation)
            case .decimal:
                calculator.setDecimal()
            case .equals:
                calculator.evaluate()
            case .clear:
                calculator.allClear()
            }
        }        
    }
}
