//
//  UITests.swift
//  UITests
//
//  Created by Ilyas Zhumadilov on 19.10.2020.
//

import XCTest

class UITests: XCTestCase {

    override func setUpWithError() throws { }

    override func tearDownWithError() throws { }

    func testCorrectWork() {
        
        let newText = "New text"
        let oldText = "Old text"
        
        let app = XCUIApplication()
        app.activate()
        
        let changeTextButton = app.buttons["Change text"]
        
        changeTextButton.tap()
        XCTAssertTrue(app.staticTexts[oldText].exists, "Text wasn't change to new value after button tapped")
        
        changeTextButton.tap()
        XCTAssertTrue(app.staticTexts[newText].exists, "Text wasn't change to new value after button tapped")
        
        changeTextButton.tap()
        XCTAssertTrue(app.staticTexts[oldText].exists, "Text wasn't change to new value after button tapped")
    }
}
