//
//  ITmmunityApp.swift
//  ITmmunity
//
//  Created by 진상현 on 2021/03/04.
//

import SwiftUI
import Firebase

@main
struct ITmmunityApp: App {
    let persistenceController = PersistenceController.shared
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}


struct MainList: View {
    var body: some View{
        List {
            ForEach(1..<10){ i in
                Text("Test \(i)")
            }
        }
    }
}

struct Preview: PreviewProvider {
    static var previews: some View {
        MainList()
    }
}
