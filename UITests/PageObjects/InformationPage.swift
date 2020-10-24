//
//  InformationPage.swift
//  UITests
//
//  Created by Ilyas Zhumadilov on 21.10.2020.
//

import XCTest

class InformationPage {
    
    // MARK: - Props
    let app: XCUIApplication
    var isVisible = false
    
    var newVCLabel: XCUIElement {
        return app.staticTexts["New VC"]
    }
    
    // MARK: - Initilization
    init(app: XCUIApplication) {
        self.app = app
        isVisible = true
    }
    
    // MARK: - Active functions
}
