//
//  AppDelegate.swift
//  MidSwiftSample1
//
//  Created by Muhammad Fauzi Masykur on 07/08/20.
//  Copyright © 2020 Muhammad Fauzi Masykur. All rights reserved.
//

import UIKit
import MidtransKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //Initialize midtrans sdk
        MidtransConfig.shared().setClientKey("VT-client-yrHf-c8Sxr-ck8tx1", environment: .sandbox, merchantServerURL: "https://promo-engine-sample-server.herokuapp.com/")
        //enable logger for debugging purpose
        MidtransNetworkLogger.shared()?.startLogging()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

