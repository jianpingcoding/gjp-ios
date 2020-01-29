//
//  Person.swift
//  gjp
//
//  Created by Gi Joe on 29/1/20.
//  Copyright © 2020 ganjianping. All rights reserved.
//

import Foundation

class Person: Equatable {
    
    var name: String
    var weight: Int
    var gender: String
    
    init(weight: Int, name: String, gender: String) {
        self.name = name
        self.weight = weight
        self.gender = gender
    }
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        if lhs.weight == rhs.weight &&
           lhs.name == rhs.name &&
           lhs.gender == rhs.gender
        {
            return true
        }
        else
        {
            return false
        }
    }
}
