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

    func testSection2() {
        XCTAssert(runSection1() == true)
    }

    /**
     P31 (*) Determine whether a given number is prime.
     */

    func testIsPrime() {
        XCTAssert(7.isPrime() == true, "7 is a prime number")
        XCTAssert(8.isPrime() == false, "8 is not a prime number")
        XCTAssert(97.isPrime() == true, "97 is a prime number")
        XCTAssert(95.isPrime() == false, "95 is not a prime number")
    }

    /**
     P32 (*) Determine the greatest common divisor of two positive numbers.
     */

    func testGCD() {
        XCTAssert(Int.gcd(36, 63) == 9, "The gcd of 36 and 63 is 9")
        XCTAssert(Int.gcd(1071, 462) == 21, "The gcd of 1071 and 462 is 21")
    }

    /**
     P33 (*) Determine whether two positive integer numbers are coprime
     */

    func testCoprim() {
        XCTAssert(35.isCoprime(to: 64) == true, "35 is coprime to 64")
        XCTAssert(21.isCoprime(to: 24) == false, "21 is not coprime to 24")
    }
}
