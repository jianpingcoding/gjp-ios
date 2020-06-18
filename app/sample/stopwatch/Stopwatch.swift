//
//  Stopwatch.swift
//  app
//
//  Created by Jianping Gan on 14/6/20.
//  Copyright © 2020 Jianping Gan. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

// The class needs to conform to the ObservableObject protocol from the Combine framework
class Stopwatch: ObservableObject {
    
    // This property publish any changes to its data, so that this change is updated in the view.
    @Published var counter: Int = 0
    
    var timer = Timer()
    
    // The start method updates the counter every second
    func start() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.counter += 1
        }
    }
    
    // The stopwatch is stopped
    func stop() {
        timer.invalidate()
    }
    
    // The couinter is reset to 0 and the stopwatch is stopped
    func reset() {
        counter = 0
        timer.invalidate()
    }
}
