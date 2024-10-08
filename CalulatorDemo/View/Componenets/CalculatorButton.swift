//
//  CalculatorButton.swift
//  CalulatorDemo
//
//  Created by Rushabh Shah on 08/10/24.
//

import SwiftUI

//Create components for buttons
extension ContentView {
    struct CalculatorButton: View {
        
        let buttonType: ButtonTypes
        @EnvironmentObject private var viewModel: CalculatorViewModel
        
        var body: some View {
            Button(buttonType.description) {
                viewModel.performAction(for: buttonType)
            }
            .buttonStyle(CalculatorButtonStyle(
                size: getButtonSize(),
                backgroundColor: Color.gray,
                foregroundColor: Color.black)
            )
        }
        
        // MARK: - Helpers
        private func getButtonSize() -> CGFloat {
            let screenWidth = UIScreen.main.bounds.width
            let buttonCount: CGFloat = 4
            let spacingCount = buttonCount + 1
            return (screenWidth - (spacingCount * 12)) / buttonCount
        }
    }
}

struct CalculatorView_CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView.CalculatorButton(buttonType: .digit(.five))
    }
}
