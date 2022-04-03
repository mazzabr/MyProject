//
//  TravnerUITests.swift
//  TravnerUITests
//
//  Created by Lorenzo Lins Mazzarotto on 03/04/22.
//

import XCTest

class TravnerUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUpWithError() throws {
        continueAfterFailure = false

        app = XCUIApplication()
        app.launchArguments = ["enable-testing"]
        app.launch()
    }

    func testAppHas4Tabs() throws {
        XCTAssertEqual(app.tabBars.buttons.count, 4, "There should be 4 tabs in the app.")
    }
}
