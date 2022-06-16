//
//  AppDelegate.swift
//  testFBSignIn
//
//  Created by 黃柏瀚 on 2022/6/16.
//



// AppDelegate.swift
//import UIKit
//import FBSDKCoreKit
//
//@UIApplicationMain
//class AppDelegate: UIResponder, UIApplicationDelegate {
//func application(
//    _ application: UIApplication,
//    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
//) -> Bool {
//    ApplicationDelegate.shared.application(
//        application,
//        didFinishLaunchingWithOptions: launchOptions
//    )
//
//    return true
//}
//
//func application(
//    _ app: UIApplication,
//    open url: URL,
//    options: [UIApplication.OpenURLOptionsKey : Any] = [:]
//) -> Bool {
//    ApplicationDelegate.shared.application(
//        app,
//        open: url,
//        sourceApplication: options[UIApplication.OpenURLOptionsKey.sourceApplication] as? String,
//        annotation: options[UIApplication.OpenURLOptionsKey.annotation]
//    )
//}
//}







import UIKit
import Firebase
import FBSDKCoreKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        ApplicationDelegate.shared.application( application, didFinishLaunchingWithOptions: launchOptions )
        return true
    }

    // MARK: UISceneSession Lifecycle
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {

    }
    func application( _ app:UIApplication, open url:URL, options: [UIApplication.OpenURLOptionsKey :Any] = [:] ) -> Bool {
        ApplicationDelegate.shared.application( app, open: url, sourceApplication: options[UIApplication.OpenURLOptionsKey.sourceApplication] as? String, annotation: options[UIApplication.OpenURLOptionsKey.annotation] )
        return true
        
    }

}
