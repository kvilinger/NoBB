//
//  AppDelegate.swift
//  NoBB
//
//  Created by DarrenW on 2018/1/2.
//  Copyright © 2018年 Darren. All rights reserved.
//

import UIKit

@UIApplicationMain


class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    private let kAppStartKey = "NBFirstStartKey"
    private let kUserLogonKey = "NBUserLogonStateKey"
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        /// 是否是第一次启动 true为不是第一次
        let notFirstStart = UserDefaults.standard.bool(forKey: kAppStartKey)
        /// 根据状态选择app的根控制器
        var rootVCString = !notFirstStart ? "ViewController" : "NBLogonController"
        /// 用户登录状态  true为已登录
        let logonState = UserDefaults.standard.bool(forKey: kUserLogonKey)
        if logonState {
           rootVCString = "Nav_NBMainPageController"
        }
        let myWindow = UIWindow(frame: UIScreen.main.bounds)
        myWindow.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: rootVCString)
        window = myWindow
        window?.makeKeyAndVisible()
        if !notFirstStart {
            UserDefaults.standard.set(true, forKey: kAppStartKey)
            UserDefaults.standard.set(true, forKey: kUserLogonKey)
        }
        return true
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

