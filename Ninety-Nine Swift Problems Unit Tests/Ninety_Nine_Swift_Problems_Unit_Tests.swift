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
    
    func testListCreation() {
        XCTAssertNotNil(List(1, 2, 3, 4, 5))
    }
    
    func testLastElement() {
        let answer = List(1, 1, 2, 3, 5, 8)!.last!
        XCTAssert(answer == 8, "last element of List(1, 1, 2, 3, 5, 8) is 8")
    }
    
    func testPennultimate() {
        let answer = List(1, 1, 2, 3, 5, 8)!.pennultimate!
        XCTAssert(answer == 5, "pennultimate of List(1, 1, 2, 3, 5, 8) is 5")
    }
    
    func testPennultimateWithSingleElement() {
        XCTAssert(List(1)!.pennultimate == nil, "pennultimate of List(1) is nil")
    }
    
    func testSubscript() {
        let list = List(4, 45, 23, 1, 0, 15)!
        XCTAssert(list[3]! == 1, "list[3] is equal to 1")
    }
    
    func testNegativSubscript() {
        let list = List(1, 2, 3, 4)!
        XCTAssert(list[-5] == nil, "list[-5] is nil")
    }
    
    func testSubscriptOutOfRange() {
        let list = List(1000, 999, 998)!
        XCTAssert(list[5] == nil, "list[5] is ")
    }
    
    func testLength() {
        XCTAssert(List(666, 555, 444, 333, 222, 111)!.length == 6, "List(666, 555, 444, 333, 222, 111).length is 6")
    }
    
    func testReverse() {
        let reverse = List(1, 1, 2, 3, 5, 8)!.reverse()
        XCTAssert("\(reverse)" == "List(8, 5, 3, 2, 1, 1)", "reverse = List(8, 5, 3, 2, 1, 1)")
        XCTAssert(reverse[0] == 8, "reverse[0] == 8")
        XCTAssert(reverse[1] == 5, "reverse[1] == 5")
        XCTAssert(reverse[2] == 3, "reverse[2] == 3")
        XCTAssert(reverse[3] == 2, "reverse[3] == 2")
        XCTAssert(reverse[4] == 1, "reverse[4] == 1")
        XCTAssert(reverse[5] == 1, "reverse[5] == 1")
    }
    
    func testIsPalindrome() {
        XCTAssert(List(1, 2, 3, 2, 1)!.isPalindrome() == true, "List(1, 2, 3, 2, 1) is a palindrome")
    }
    
    func testIsNotAPalindrome() {
        XCTAssert(List(1, 2, 3, 4, 5)!.isPalindrome() == false, "List(1, 2, 3, 4, 5) is not a palindrom")
    }
    
    func testPerformanceSection1() {
        runSection1()
    }
    
    func testFlatten() {
        let list = List<Any>(List<Any>(1, 1)!, 2, List<Any>(3, List<Any>(5, 8)!)!)!.flatten()
        XCTAssert("\(list)" == "List(1, 1, 2, 3, 5, 8)")
    }
}
