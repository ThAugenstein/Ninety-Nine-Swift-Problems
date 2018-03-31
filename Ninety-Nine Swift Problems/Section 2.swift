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
