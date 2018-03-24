//
//  Section 1.swift
//  Ninety-Nine Swift Problems
//
//  Created by Thomas Augenstein on 23.03.18.
//  Copyright © 2018 Thomas Augenstein. All rights reserved.
//

import Foundation

/**
 P01 (*) Find the last element of a linked list.
*/

extension List {
    var last: T? {
        if nextItem == nil {
            return value
        }
        return nextItem!.last
    }
}

/**
 P02 (*) Find the last but one element of a linked list.
 */

extension List {
    var pennultimate: T? {
        guard let next = nextItem else {
            return nil
        }
        if next.nextItem == nil {
            return value
        }
        return next.pennultimate
    }
}

/**
 P03 (*) Find the Kth element of a linked list.
 */

extension List {
    subscript(index: Int) -> T? {
        guard index >= 0 else {
            return nil
        }
        if index == 0 {
            return value
        }
        return nextItem?[index-1]
    }
}
