//
//  List.swift
//  Ninety-Nine Swift Problems
//
//  Created by Thomas Augenstein on 23.03.18.
//  Copyright © 2018 Thomas Augenstein. All rights reserved.
//

import Foundation

class List<T>: CustomStringConvertible {
    var value: T
    var nextItem: List<T>?
    convenience init?(_ values: T...) {
        self.init(Array(values))
    }
    init?(_ values: [T]) {
        guard let first = values.first else {
            return nil
        }
        value = first
        nextItem = List(Array(values.suffix(from: 1)))
    }
    var description: String {

        return "List(" + stringList + ")"
    }
}

extension List {
    var stringList: String {
        let stringValue = "\(value)"
        guard let next = nextItem else {
            return stringValue
        }
        return stringValue + ", " + next.stringList
     }
}
