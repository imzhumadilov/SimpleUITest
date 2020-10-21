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
    
        let password = "qwe"

        let app = XCUIApplication()
        app.launch()

        let passwordTextField = app.secureTextFields["Enter password"]
        XCTAssertTrue(passwordTextField.exists, "No field to enter password")
        passwordTextField.tap()
        passwordTextField.typeText(password)

        let loginButton = app.buttons["Login"]
        XCTAssertTrue(loginButton.exists, "No login button")
        loginButton.tap()
        
        let newVCLabel = app.staticTexts["New VC"]
        XCTAssertTrue(newVCLabel.exists, "Not present New VC")
        
    }
    
    func testWithPageObject() {
        
        let password = "qwe"
        
        let app = XCUIApplication()
        app.launch()
        
        let mainVC = MainViewControllerTests()
        mainVC.login(with: password)
        
        let newVC = NewViewControllerTests()
        newVC.present()
    }
}
