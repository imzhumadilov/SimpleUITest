//
//  XCUIApplication.swift
//  UITests
//
//  Created by Ilyas Zhumadilov on 21.10.2020.
//

import XCTest

extension XCUIApplication {
    
    func passwordTextField() -> XCUIElement {
        return secureTextFields["Enter password"]
    }
    
    func loginButton() -> XCUIElement {
        return buttons["Login"]
    }
    
    func newVCLabel() -> XCUIElement {
        return staticTexts["New VC"]
    }
}
