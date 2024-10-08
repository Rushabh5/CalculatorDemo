//
//  DigitModelRS.swift
//  CalulatorDemo
//
//  Created by Rushabh Shah on 08/10/24.
// Create model file for Digit

import Foundation

//Create number enum to reuse.
enum Digits: Int, CaseIterable, CustomStringConvertible { //Custom string representation of our types
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}
