//
//  Equatable.swift
//  gjp
//
//  Created by Gi Joe on 29/1/20.
//  Copyright © 2020 ganjianping. All rights reserved.
//

import Foundation

protocol Equatable {
    static func == (lhs: Self, rhs: Self) -> Bool
}
