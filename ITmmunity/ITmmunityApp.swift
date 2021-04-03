//
//  ITmmunityApp.swift
//  ITmmunity
//
//  Created by 진상현 on 2021/03/04.
//

import SwiftUI
import Firebase
import MaterialComponents.MaterialNavigationDrawer

@main
struct ITmmunityApp: App {
    let persistenceController = PersistenceController.shared
    init(){
        FirebaseApp.configure()
        UITabBar.appearance().isHidden = true
    }
    var body: some Scene {
        WindowGroup {
            TabView {
                NewsList()
//                ContentView()
//                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    
                 .tabItem {Color("AccentColor")
                    Image(systemName: "phone.fill")
                    Text("News")
                  }
               Text("Community 기능은 곧 만나 볼 수 있어요.")
                 .tabItem {
                    Image(systemName: "tv.fill")
                    Text("Community")
                 }
                Text("Settings 기능은 곧 만나 볼 수 있어요.")
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
        NewsList()
    }
}

