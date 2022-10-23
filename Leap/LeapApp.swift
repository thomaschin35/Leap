//
//  LeapApp.swift
//  Leap
//
//  Created by Thomas Chin on 10/22/22.
//

import SwiftUI
import Foundation
import CoreData
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
