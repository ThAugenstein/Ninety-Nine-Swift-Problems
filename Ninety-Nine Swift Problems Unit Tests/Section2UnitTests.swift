//
//  Section2UnitTests.swift
//  Ninety-Nine Swift Problems Unit Tests
//
//  Created by Thomas Augenstein on 28.03.18.
//  Copyright © 2018 Thomas Augenstein. All rights reserved.
//

import XCTest

class Section2UnitTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testIsPrime() {
        XCTAssert(7.isPrime() == true, "7 is a prime number")
        XCTAssert(8.isPrime() == false, "8 is not a prime number")
        XCTAssert(97.isPrime() == true, "97 is a prime number")
    }

}
