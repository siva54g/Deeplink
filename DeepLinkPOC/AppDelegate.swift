//
//  AppDelegate.swift
//  DeepLinkPOC
//
//  Created by Siva G on 30/11/21.
//

import UIKit
import Firebase
@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
//        let db = Database.database().reference()
//        db.setValue("Hello Firebase")
        return true
    }
    
    //< ios 13
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        
        print(url)
        
        return true
    }
    
//    func application(_ application: UIApplication,
//                         continue userActivity: NSUserActivity,
//                         restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
//            guard userActivity.activityType == NSUserActivityTypeBrowsingWeb,
//                let url = userActivity.webpageURL,
//                let host = url.host else {
//                    return false
//            }
//
//            let isDynamicLinkHandled =
//                DynamicLinks.dynamicLinks().handleUniversalLink(url) { dynamicLink, error in
//
//                    guard error == nil,
//                        let dynamicLink = dynamicLink,
//                        let urlString = dynamicLink.url?.absoluteString else {
//                            return
//                    }
//
//                    print("Dynamic link host: \(host)")
//                    print("Dyanmic link url: \(urlString)")
//                    print("Dynamic link match type: \(dynamicLink.matchType.rawValue)")
//                }
//            return isDynamicLinkHandled
//        }
//
//    func application(_ app: UIApplication,
//                          open url: URL,
//                          options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
//             if let dynamicLink = DynamicLinks.dynamicLinks().dynamicLink(fromCustomSchemeURL: url) {
//                 guard let urlString = dynamicLink.url?.absoluteString  else {
//                     return false
//                 }
//
//                 print("Dyanmic link url: \(urlString)")
//                 print("Dynamic link match type: \(dynamicLink.matchType.rawValue)")
//
//                 return true
//             }
//
//             return false
//         }
    
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

