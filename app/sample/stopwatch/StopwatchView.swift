//
//  StopwatchView.swift
//  app
//
//  Created by Jianping Gan on 14/6/20.
//  Copyright © 2020 Jianping Gan. All rights reserved.
//

import SwiftUI

struct StopwatchView: View {
    //The ObservedObject property wrapper “subscribes” to the Stopwatch class
    @ObservedObject var stopwatch = Stopwatch()
    
    var body: some View {
        VStack {
            HStack {
                // Three buttons are displayed. which will start,stop and reset the stopwatch.
                Button(action: {
                    self.stopwatch.start()
                }) {
                    Text("Start")
                }
                
                Button(action: {
                    self.stopwatch.stop()
                }) {
                    Text("Stop")
                }
                Button(action: {
                    self.stopwatch.reset()
                }) {
                    Text("Reset")
                }
            }
            // The counter value is displayed and updated from the “published” property.
            Text("\(self.stopwatch.counter)")
        }.font(.largeTitle)
    }
}

struct StopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchView()
    }
}
