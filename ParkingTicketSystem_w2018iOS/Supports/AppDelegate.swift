//
//  AppDelegate.swift
//  Demo
//
//  Created by MacStudent on 2017-10-16.
//  Copyright © 2017 MacStudent. All rights reserved.
//

//https://grokswift.com/custom-fonts/

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private var currentUser: Customer?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.setNavigationTheme()
        Customer.loadDefaultCustomerRecords()
        ParkingTicket.loadDefaultParkingRecords()
        return true
    }
    
    func setCurrentUser(cust: Customer)
    {
        self.currentUser = cust
    }
    
    func getCurrentUser() -> Customer
    {
        return self.currentUser!
    }
    //https://medium.com/devagnos/customizing-the-navigation-bar-in-ios-with-swift-46cea5cd362d
    func setNavigationTheme() {
        let navigationBarAppearace = UINavigationBar.appearance()
        navigationBarAppearace.tintColor = UIColor.white
        navigationBarAppearace.barTintColor = #colorLiteral(red: 0, green: 0.467790544, blue: 1, alpha: 1)
        
        // change navigation item title color
        navigationBarAppearace.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white]
        
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
        
        //navigationBarAppearace.tintColor = uicolorFromHex(0xffffff)
        //navigationBarAppearace.barTintColor = uicolorFromHex(0x034517)
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

   
}

