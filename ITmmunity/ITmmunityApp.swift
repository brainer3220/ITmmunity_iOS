//
//  ITmmunityApp.swift
//  ITmmunity
//
//  Created by 진상현 on 2021/03/04.
//

import SwiftUI

@main
struct ITmmunityApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
