//
//  ContentView.swift
//  CalulatorDemo
//
//  Created by Rushabh Shah on 07/10/24.
//

import SwiftUI

//Main Calculator Screen
struct ContentView: View {
    
    //MARK: Property
    @EnvironmentObject private var viewModel: CalculatorViewModel //Our ViewModel class
    
    
    var body: some View {
        VStack {
            NavigationView {
                Text("")
                    .navigationBarItems(trailing: Button(action: {
                        viewModel.performAction(for: .clear)
                    }) {
                        Text("Clear")
                            .foregroundColor(.blue)
                    })
            }

            Spacer()
            displayText
            buttonPad
        }
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// MARK: - Create Components so we can reuse if we need in another screen
extension ContentView {
    private var displayText: some View {
        HStack {
            Spacer()
            Text(viewModel.displayText)
                .font(.largeTitle)
                .padding()
                .frame(maxWidth: .infinity, alignment: .trailing)
                .lineLimit(1)
                .minimumScaleFactor(0.2)
        }
    }
    
    private var buttonPad: some View {
        VStack(spacing: 12) {
            ForEach(viewModel.buttonRows, id: \.self) { row in
                HStack(spacing: 12) {
                    ForEach(row, id: \.self) { buttonType in
                        CalculatorButton(buttonType: buttonType)
                    }
                }
            }
        }
    }
}
