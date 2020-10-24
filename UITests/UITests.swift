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
    
//    func testWithPageObject() {
//        
//        let password = "qwe"
//        
//        let app = XCUIApplication()
//        app.launch()
//        
//        let mainVC = LoginPage()
//        mainVC.login(with: password)
//        
//        let newVC = NewViewControllerTests()
//        newVC.present()
//    }
    
    func testLoginSuccess() {
        let app = XCUIApplication()
        app.launch()

        let loginPage = LoginPage(app: app)
        XCTAssertTrue(loginPage.isVisible, "Didn’t get Login screen" )

        loginPage.login(with: "qwe")

        let infoPage = InformationPage(app: app)
        XCTAssertTrue(infoPage.isVisible, "Didn’t login successfully" )
    }
}
