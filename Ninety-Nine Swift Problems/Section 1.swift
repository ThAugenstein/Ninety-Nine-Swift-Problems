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

/**
 P06 (*)  Find out whether a linked list is a palindrome.
 */

extension List where T:Equatable {
    
    func isPalindrome() -> Bool {
        
        for index in 0...length/2 {
            if self[index] != self[length-(1+index)] {
                return false
            }
        }
        return true
    }
}

/**
 P07 (**)  Flatten a nested linked list structure.
 */

extension List {
    func flatten2(_ addclosure: (_ item: List) -> ()) {
        
        if let list = value as? List {
            list.flatten2(addclosure)
        } else {
            if let newItem = List(value) {
                addclosure(newItem)
            }
        }
        if let next = nextItem {
           next.flatten2(addclosure)
        }
    }
    
    func flatten() -> List {
        var first: List? = nil
        var prev: List? = nil
        
        let addItem: (_ item: List) -> () = {
            item in
            
            if first == nil {
                first = item
                prev = first
            } else {
                prev!.nextItem = item
                prev = item
            }
        }
        
        self.flatten2(addItem)
        return first!
    }
    
}

/**
 P08 (**)  Eliminate consecutive duplicates of linkes list elements.
 */

extension List where T: Equatable {
    
    func compress() -> List {
        let newList = List(value)!
        var previousAdded = newList
        var current = nextItem
        
        while current != nil {
            if current!.value != previousAdded.value {
                let newItem = List(current!.value)!
                previousAdded.nextItem = newItem
                previousAdded = newItem
            }
            
            current = current!.nextItem
        }
        
        
        return newList
    }
}

