//
//  UserData.swift
//  app
//
//  Created by Jianping Gan on 13/6/20.
//  Copyright © 2020 Jianping Gan. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
