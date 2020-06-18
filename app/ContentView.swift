//
//  ContentView.swift
//  app
//
//  Created by Jianping Gan on 19/5/20.
//  Copyright © 2020 Jianping Gan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: LandmarkList()) {
                    Text("Landmark")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
