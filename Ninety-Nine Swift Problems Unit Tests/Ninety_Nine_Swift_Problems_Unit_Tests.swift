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
        XCTAssert(answer == 8, "last element of List(1, 1, 2, 3, 5, 8) is 8")
    }
    
    
}
