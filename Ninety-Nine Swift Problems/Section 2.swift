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
    static func gcd(_ first: Int, _ second: Int) -> Int {
        var alpha = first, beta = second
        while beta != 0 {
            let temp = beta
            beta = alpha % beta
            alpha = temp
        }
        return alpha
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
