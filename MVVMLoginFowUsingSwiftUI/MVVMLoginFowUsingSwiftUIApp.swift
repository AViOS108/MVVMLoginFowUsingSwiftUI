//
//  MVVMLoginFowUsingSwiftUIApp.swift
//  MVVMLoginFowUsingSwiftUI
//
//  Created by Anurag Bhakuni on 09/08/21.
//

import SwiftUI

@main
struct MVVMLoginFowUsingSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
