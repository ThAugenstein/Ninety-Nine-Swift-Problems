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
        let testCases = [(36, 63, 9), (1071, 462, 21), (13, 13, 13), (37, 600, 1),
                         (20, 100, 20), (624129, 2061517, 18913), (2345, 72, 1),
                         (1406700, 164115, 23445), (1368, 339, 3), (55534, 434334, 2),
                         (243532, 0, 243532), (30315475, 24440870, 31415),
                         (37279462087332, 366983722766, 564958)]

        for (number1, number2, solution) in testCases {
            XCTAssert(Int.gcd(number1, number2) == solution,
                "The gcd of \(number1) and \(number2) is \(solution)")
        }
    }

    /**
     P33 (*) Determine whether two positive integer numbers are coprime
     */

    func testCoprim() {
        XCTAssert(35.isCoprime(to: 64) == true, "35 is coprime to 64")
        XCTAssert(21.isCoprime(to: 24) == false, "21 is not coprime to 24")
    }

    /**
     P33 (*) Calculate Euler's totient function phi(m)
     */

    func testTotient() {
        XCTAssert(10.totient == 4, "phi(10) = 4")
        XCTAssert(1.totient == 1, "phi(1) = 1")
        XCTAssert(50.totient == 20, "phi(50) = 20")
        XCTAssert(81.totient == 54, "phi(81) = 54")
    }

}
