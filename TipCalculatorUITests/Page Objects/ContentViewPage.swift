//
//  ContentViewPage.swift
//  TipCalculatorUITests
//
//  Created by Kayo on 2025-03-31.
//

import Foundation
import XCTest

class ContentViewPage {
 
    var app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    var totalTextField: XCUIElement {
        app.textFields["totalTextField"]
    }
    
    var calculateTipButton: XCUIElement {
        app.buttons["calculateTipButton"]
    }
    
    var tipPercentageSegmentControl: XCUIElement {
        app.segmentedControls["tipPercentageSegmentedControl"]
    }
    
    var tipText: XCUIElement {
        app.staticTexts["tipText"]
    }
    
    var messageText: XCUIElement {
        app.staticTexts["messageText"]
    }
}
