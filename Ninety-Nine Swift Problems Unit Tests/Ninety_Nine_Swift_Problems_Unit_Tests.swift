//
//  Ninety_Nine_Swift_Problems_Unit_Tests.swift
//  Ninety-Nine Swift Problems Unit Tests
//
//  Created by Thomas Augenstein on 23.03.18.
//  Copyright © 2018 Thomas Augenstein. All rights reserved.
//

import XCTest
// @testable import List

class Ninety_Nine_Swift_Problems_Unit_Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLastElement() {
        let answer = List(1, 1, 2, 3, 5, 8)!.last!
        XCTAssert(answer == 8, "last Element should be 8!")
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
