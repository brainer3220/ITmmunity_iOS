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
            TabView {
                NewsList()
//                ContentView()
//                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    
                 .tabItem {
                    Image(systemName: "phone.fill")
                    Text("News")
                  }
               Text("The content of the second view")
                 .tabItem {
                    Image(systemName: "tv.fill")
                    Text("Community")
                 }
                Text("My Settings")
                  .tabItem {
                     Image(systemName: "tv.fill")
                     Text("Settings")
                  }
            }
        }
    }
}


struct NewsList: View {
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
    }
}
