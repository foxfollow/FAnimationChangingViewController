//
//  AppDelegate.swift
//  FAnimationChangingViewController
//
//  Created by Heorhii Savoiskyi on 27.12.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.rootViewController = UINavigationController(
            rootViewController: ExampleFineViewController()
        )
        window?.makeKeyAndVisible()
        
        return true
    }
}
