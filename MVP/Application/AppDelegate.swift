//
//  AppDelegate.swift
//  MVP
//
//  Created by Ilya Slipak on 03.10.2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        UINavigationBar.appearance().barStyle = .black
        
        let carListViewController = ScreenFactory.makeCarListScreen()
        let navigatioController = UINavigationController(rootViewController: carListViewController)
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigatioController
        window?.makeKeyAndVisible()
        
        return true
    }
}

