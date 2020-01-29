//
//  Feature.swift
//  gjp
//
//  Created by Jianping on 7/1/20.
//  Copyright © 2020 ganjianping. All rights reserved.
//

import Foundation

class Feature {
    //MARK: Properties
    var name: String
    
    
    //MARK: Initialization
    init?(name: String) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // Initialize stored properties
        self.name = name
    
    }
    
}
