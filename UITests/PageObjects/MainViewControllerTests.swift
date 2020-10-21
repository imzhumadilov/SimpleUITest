//
//  MainViewControllerTests.swift
//  UITests
//
//  Created by Ilyas Zhumadilov on 21.10.2020.
//

import XCTest

class MainViewControllerTests {
    
    // MARK: - Props
    var passwordTextField: XCUIElement {
        return XCUIApplication().secureTextFields["Enter password"]
    }
    
    var loginButton: XCUIElement {
        return XCUIApplication().buttons["Login"]
    }
    
    var newVCLabel: XCUIElement {
        return XCUIApplication().staticTexts["New VC"]
    }
    
    // MARK: - Active functions
    func enterPassword(_ password: String) {
        XCTAssertTrue(passwordTextField.exists, "No field to enter password")
        passwordTextField.tap()
        passwordTextField.typeText(password)
    }
    
    func clickLoginButton() {
        loginButton.tap()
        XCTAssertTrue(loginButton.exists, "No login button")
    }
    
    func login(with password: String) {
        enterPassword(password)
        clickLoginButton()
    }
}
