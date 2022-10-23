//
//  LeapApp.swift
//  Leap
//
//  Created by Thomas Chin on 10/22/22.
//

import SwiftUI
//import FirebaseCore


@main
struct LeapApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            LoginPage().environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}

//class AppDelegate: NSObject, UIApplicationDelegate {
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchingOptions:
//                     [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        FirebaseApp.configure()
//        return true
//    }
//}
