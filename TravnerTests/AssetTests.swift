//
//  AssetTests.swift
//  TravnerTests
//
//  Created by Lorenzo Lins Mazzarotto on 03/04/22.
//

import XCTest
@testable import Travner

class AssetTests: XCTestCase {
    func testColorsExist() {
        for color in Project.colors {
            XCTAssertNotNil(UIColor(named: color), "Failed to load color '\(color)' from asset catalog.")
        }
    }

    func testJSONLoadsCorrectly() {
        XCTAssertTrue(Award.allAwards.isEmpty == false, "Failed to load awards from JSON.")
    }
}
