//
//  PerformanceTests.swift
//  TravnerTests
//
//  Created by Lorenzo Lins Mazzarotto on 03/04/22.
//

import XCTest
@testable import Travner

class PerformanceTests: BaseTestCase {
    func testAwardCalculationPerformance() throws {
        for _ in 1...100 {
            try dataController.createSampleData()
        }

        let awards = Array(repeating: Award.allAwards, count: 25).joined()

        measure {
            _ = awards.filter(dataController.hasEarned)
        }
    }
}
