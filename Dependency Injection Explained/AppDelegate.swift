//
//  AppDelegate.swift
//  Dependency Injection Explained
//
//  Created by Kyle Lee on 7/1/18.
//  Copyright © 2018 Kyle Lee. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let mainController = FirstViewRouter.createFirstViewModule()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = mainController
        window?.makeKeyAndVisible()
        
        
        return true
    }


}

