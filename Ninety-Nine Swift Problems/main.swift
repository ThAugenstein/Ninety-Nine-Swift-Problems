//
//  main.swift
//  Ninety-Nine Swift Problems
//
//  Created by Thomas Augenstein on 23.03.18.
//  Copyright © 2018 Thomas Augenstein. All rights reserved.
//

import Foundation

func runSection1() -> Bool {

    print ("Running Section 1 ...\n")

    let sampleList = List(1, 1, 2, 3, 5, 8)!

    print ("P01 Find the last element of a linked list.")
    print ("\(sampleList).last = \(sampleList.last!)\n")

    print ("P02 Find the last but one element of a linked list.")
    print ("\(sampleList).pennultimate = \(sampleList.pennultimate!)\n")

    print ("P03 Find the Kth element of a linked list.")
    print ("let list = \(sampleList)")
    let list = sampleList
    print ("list[2] = \(list[2]!)\n")

    print ("P04 Find the number of elements of a linked list.")
    print ("\(sampleList).length = \(sampleList.length)\n")

    print ("P05 Reverse a linked list.")
    print ("\(sampleList).reverse() = \(sampleList.reverse())\n")

    print ("P06 Find out whether a linked list is a palindrome")
    print ("List(1, 2, 3, 2, 1).isPalindrome() = \(List(1, 2, 3, 2, 1)!.isPalindrome())\n")

    print ("P07 Flatten a nested linkes list structure")
    let flattendList = List<Any>(List<Any>(1, 1)!, 2, List<Any>(3, List<Any>(5, 8)!)!)!.flatten()
    print ("List<Any>(List<Any>(1, 1), 2, List<Any>(3, List<Any>(5, 8))).flatten() = \(flattendList)\n")

    print ("P08 Eliminate consecutive duplicates of linked list elements")
    let list2 = List("a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e", "e")!
    print ("\(list2) = \(list2.compress())\n" )

    print ("Section 1 done\n")

    return true
}

func runSection2() -> Bool {

    print("P31 Determine whether a given integer is prime.")
    print("97.isPrime() = \(97.isPrime())\n")

    print("P32 Determine the greatest common divisor of two positive numbers.")
    print("GCD of 63 and 36 is \(Int.gcd(63, 36))\n")

    print ("Section 2 done\n")

    return true
}

_ = runSection1()
_ = runSection2()
