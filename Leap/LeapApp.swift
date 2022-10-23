//
//  LeapApp.swift
//  Leap
//
//  Created by Thomas Chin on 10/22/22.
//

import SwiftUI

@main
struct LeapApp: App {
    @State private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            Login().environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
