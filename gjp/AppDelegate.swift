//
//  AppDelegate.swift
//  gjp
//
//  Created by Gan Jianping on 7/1/20.
//  Copyright © 2020 ganjianping. All rights reserved.
//

import UIKit

/*
  Using the UIApplicationMain attribute is equivalent to calling the UIApplicationMain function and passing your AppDelegate class’s name as the name of the delegate class.
  UIApplicationDelegate protocol defines a number of methods you use to set up your app, to respond to the app’s state changes, and to handle other app-level events.
 */
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        var window: UIWindow?
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

