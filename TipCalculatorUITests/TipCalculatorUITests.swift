//
//  TipCalculatorUITests.swift
//  TipCalculatorUITests
//
//  Created by Kayo on 2025-03-28.
//

import XCTest

final class when_content_view_is_shown: XCTestCase {

    private let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }
    
    func test_should_make_sure_that_the_total_text_field_contains_default_value() {

        let totalTextField = app.textFields["totalTextField"]
        XCTAssertEqual(totalTextField.value as! String, "Enter total")
    }
    
    func test_should_make_sure_20_percent_default_tip_selected() {

        let tipSegmentedControl = app.segmentedControls["tipPercentageSegmentedControl"]
        let segmentedControlButton = tipSegmentedControl.buttons.element(boundBy: 1)
        
        XCTAssertEqual(segmentedControlButton.label, "20%")
        XCTAssertTrue(segmentedControlButton.isSelected)
    }
    
}
