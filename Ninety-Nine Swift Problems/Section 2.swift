//
//  Section 2.swift
//  Ninety-Nine Swift Problems
//
//  Created by Thomas Augenstein on 28.03.18.
//  Copyright © 2018 Thomas Augenstein. All rights reserved.
//

import Foundation

/**
 P31 (*) Determine whether a given number is prime.
 */

extension Int {
    func isPrime() -> Bool {
        for divisor in 2...Int(sqrt(Double(self))) {
            if self % divisor == 0 {
                return false
            }
        }
        return true
    }
}

/**
 P32 (*) Determine the greatest common divisor of two positive numbers.
 */

extension Int {
    static func gcd(_ number1: Int, _ number2: Int) -> Int {
        guard number2 != 0 else { return number1 }
        return gcd(number2, number1 % number2)

//        var a = first, b = second
//        while b != 0 {
//            let temp = b
//            b = a % b
//            a = temp
//        }
//        return a
    }
}

/**
 P33 (*) Determine whether two positive integer numbers are coprime
 */

extension Int {
    func isCoprime(to: Int) -> Bool {
        return Int.gcd(self, to) == 1
    }
}

/**
 P33 (*) Calculate Euler's totient function phi(m)
 */

extension Int {
    var totient: Int {
        let ret = Array(1...self).reduce(0) { count, number in count + (Int.gcd(number, self) == 1 ? 1 : 0) }
        return ret
    }
}
