//
//  CalulatorDemoTests.swift
//  CalulatorDemoTests
//
//  Created by Rushabh Shah on 07/10/24.
//

import XCTest
@testable import CalulatorDemo

final class CalulatorDemoTests: XCTestCase {
    
    var calculatorModel: CalculatorModel!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        calculatorModel = CalculatorModel()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        calculatorModel = nil
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
//        XCTAssertEqual(calculatorModel.currentInputValue, "")
//        XCTAssertEqual(calculatorModel.previousInputValue, "")
//        XCTAssertEqual(calculatorModel.operation, .none)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func testInputDigit() throws {
        calculatorModel.setDigit(.five)
        XCTAssertEqual(calculatorModel.displayText, "5")
        
        calculatorModel.setDigit(.three)
        XCTAssertEqual(calculatorModel.displayText, "53")
    }
    
    func testClearFunction() throws {
        calculatorModel.setDigit(.five)
        calculatorModel.allClear()
        XCTAssertEqual(calculatorModel.displayText, "0")
    }
    
    func testAddition() throws {
        calculatorModel.setDigit(.five)
        calculatorModel.setOperation(.addition)
        calculatorModel.setDigit(.three)
        calculatorModel.setOperation(.addition)
        XCTAssertEqual(calculatorModel.displayText, "8")
         //If We enter a wrong value then it will be failed otherwise it will pass
    }
    
    func testSubtraction() throws {
        calculatorModel.setDigit(.one)
        calculatorModel.setDigit(.zero)
        calculatorModel.setOperation(.subtraction)
        calculatorModel.setDigit(.four)
        calculatorModel.setOperation(.subtraction)
        XCTAssertEqual(calculatorModel.displayText, "6")
    }
    
    func testMultiplication() throws {
        calculatorModel.setDigit(.seven)
        calculatorModel.setOperation(.multiplication)
        calculatorModel.setDigit(.six)
        calculatorModel.setOperation(.multiplication)
        XCTAssertEqual(calculatorModel.displayText, "42")
    }
    
    func testDivision() throws {
        calculatorModel.setDigit(.four)
        calculatorModel.setOperation(.division)
        calculatorModel.setDigit(.two)
        calculatorModel.setOperation(.division)
        XCTAssertEqual(calculatorModel.displayText, "2")
    }
    
    func testDivisionByZero() throws {
        calculatorModel.setDigit(.two)
        calculatorModel.setDigit(.zero)
        calculatorModel.setOperation(.division)
        calculatorModel.setDigit(.zero)
        XCTAssertEqual(calculatorModel.displayText, "0") // Assuming we want to return 0 in case of division by zero
    }
    
    func testMultipleArithmeticOperations() throws {
        calculatorModel.setDigit(.two) //20
        calculatorModel.setDigit(.zero)
        calculatorModel.setOperation(.addition)
        calculatorModel.setDigit(.four) //+ 4
        calculatorModel.setOperation(.subtraction) //24
        calculatorModel.setDigit(.five)
        calculatorModel.setOperation(.multiplication) //24-5 = 19
        XCTAssertEqual(calculatorModel.displayText, "19") // Assuming we want to return 0 in case of division by zero
    }
    
}
