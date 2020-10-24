//
//  LoginPage.swift
//  UITests
//
//  Created by Ilyas Zhumadilov on 21.10.2020.
//

import XCTest

class LoginPage {
    
    // MARK: - Props
    let app: XCUIApplication
    var isVisible = false
    
    var passwordTextField: XCUIElement {
        return XCUIApplication().secureTextFields["Enter password"]
    }
    
    var loginButton: XCUIElement {
        return XCUIApplication().buttons["Login"]
    }
    
    // MARK: - Initilization
    init(app: XCUIApplication) {
        self.app = app
        isVisible = true
    }
    
    // MARK: - Active functions
    func enterPassword(_ password: String) {
        XCTAssertTrue(passwordTextField.exists, "No field to enter password")
        passwordTextField.tap()
        passwordTextField.typeText(password)
    }
    
    func clickLoginButton() {
        XCTAssertTrue(loginButton.exists, "No login button")
        loginButton.tap()
    }
    
    func login(with password: String) {
        enterPassword(password)
        clickLoginButton()
    }
}
