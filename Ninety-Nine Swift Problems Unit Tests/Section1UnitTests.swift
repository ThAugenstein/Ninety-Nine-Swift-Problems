//
//  Ninety_Nine_Swift_Problems_Unit_Tests.swift
//  Ninety-Nine Swift Problems Unit Tests
//
//  Created by Thomas Augenstein on 23.03.18.
//  Copyright © 2018 Thomas Augenstein. All rights reserved.
//

import XCTest
// @testable import List

class Section1UnitTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.

    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testSection1() {
        XCTAssert(runSection1() == true)
    }

    func testListCreation() {
        XCTAssertNotNil(List(1, 2, 3, 4, 5))
    }

    /**
     P01 (*) Find the last element of a linked list.
     */

    func testLastElement() {
        let answer = List(1, 1, 2, 3, 5, 8)!.last!
        XCTAssert(answer == 8, "last element of List(1, 1, 2, 3, 5, 8) is 8")
    }

    /**
     P02 (*) Find the last but one element of a linked list.
     */

    func testPennultimate() {
        let answer = List(1, 1, 2, 3, 5, 8)!.pennultimate!
        XCTAssert(answer == 5, "pennultimate of List(1, 1, 2, 3, 5, 8) is 5")
    }

    func testPennultimateWithSingleElement() {
        XCTAssert(List(1)!.pennultimate == nil, "pennultimate of List(1) is nil")
    }

    /**
     P03 (*) Find the Kth element of a linked list.
     */

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

    /**
     P04 (*)  Find the number of elements of a linked list.
     */

    func testLength() {
        XCTAssert(List(666, 555, 444, 333, 222, 111)!.length == 6, "List(666, 555, 444, 333, 222, 111).length is 6")
    }

    /**
     P05 (*) Reverse a linked list.
     */

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

    /**
     P06 (*)  Find out whether a linked list is a palindrome.
     */

    func testIsPalindrome() {
        XCTAssert(List(1, 2, 3, 2, 1)!.isPalindrome() == true, "List(1, 2, 3, 2, 1) is a palindrome")
    }

    func testIsNotAPalindrome() {
        XCTAssert(List(1, 2, 3, 4, 5)!.isPalindrome() == false, "List(1, 2, 3, 4, 5) is not a palindrom")
    }

    /**
     P07 (**)  Flatten a nested linked list structure.
     */

    func testFlatten() {
        let list = List<Any>(List<Any>(1, 1)!, 2, List<Any>(3, List<Any>(5, 8)!)!)!.flatten()
        XCTAssert("\(list)" == "List(1, 1, 2, 3, 5, 8)")
    }

    /**
     P08 (**)  Eliminate consecutive duplicates of linkes list elements.
     */

    func testElimintateConsecutiveDuplicates() {
        let list = List("a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e", "e")!
        let compressedList = list.compress()
        XCTAssert(compressedList[0] == "a")
        XCTAssert(compressedList[1] == "b")
        XCTAssert(compressedList[2] == "c")
        XCTAssert(compressedList[3] == "a")
        XCTAssert(compressedList[4] == "d")
        XCTAssert(compressedList[5] == "e")
    }
}
