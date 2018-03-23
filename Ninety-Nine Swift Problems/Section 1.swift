//
//  Section 1.swift
//  Ninety-Nine Swift Problems
//
//  Created by Thomas Augenstein on 23.03.18.
//  Copyright © 2018 Thomas Augenstein. All rights reserved.
//

import Foundation

extension List {
    var last: T? {
        if nextItem == nil {
            return value
        }
        return nextItem!.last
    }
}
