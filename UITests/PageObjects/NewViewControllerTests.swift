//
//  NewViewControllerTests.swift
//  UITests
//
//  Created by Ilyas Zhumadilov on 21.10.2020.
//

import XCTest

class NewViewControllerTests {
    
    // MARK: - Props
    var newVCLabel: XCUIElement {
        return XCUIApplication().staticTexts["New VC"]
    }
    
    // MARK: - Active functions
    func present() {
        XCTAssertTrue(newVCLabel.exists, "Not present New VC")
    }
}
