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

/**
 P04 (*)  Find the number of elements of a linked list.
 */

extension List {
    var length: Int {
        guard let next = nextItem else {
            return 1
        }
        return 1 + next.length
    }
}

/**
 P05 (*) Reverse a linked list.
 */

extension List {
    
    func recursiveReverse(_ prevItem: List<T>?) -> List<T> {
        let newItem = List(value)
        newItem!.nextItem = prevItem
        
        guard let next = nextItem else {
            return newItem!
        }
        return next.recursiveReverse(newItem)
    }
    func reverse() -> List<T> {
        return recursiveReverse(nil)
    }
}
