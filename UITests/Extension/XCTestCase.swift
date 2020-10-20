//
//  XCTestCase.swift
//  UITests
//
//  Created by Ilyas Zhumadilov on 21.10.2020.
//

import XCTest

extension XCTestCase {
    
    func enterPassword(_ password: String) {
        let passwordTextField = XCUIApplication().passwordTextField()
        XCTAssertTrue(passwordTextField.exists, "No field to enter password")
        passwordTextField.tap()
        passwordTextField.typeText(password)
    }
    
    func clickLoginButton() {
        let loginButton = XCUIApplication().loginButton()
        loginButton.tap()
        XCTAssertTrue(loginButton.exists, "No login button")
    }
    
    func presentNewVC() {
        let newVCLabel = XCUIApplication().newVCLabel()
        XCTAssertTrue(newVCLabel.exists, "Not present New VC")
    }
    
    func login(with password: String) {
        enterPassword(password)
        clickLoginButton()
        presentNewVC()
    }
}
