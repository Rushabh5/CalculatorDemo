//
//  CalulatorDemoApp.swift
//  CalulatorDemo
//
//  Created by Rushabh Shah on 07/10/24.
//

import SwiftUI

@main
struct CalulatorDemoApp: App {
    var body: some Scene {
        WindowGroup {
            //The code is organized into the model, view, and view model(MVVM), improving maintainability and clarity.
            ContentView()
                .environmentObject(ContentView.CalculatorViewModel())
        }
    }
}
