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
            HStack {
                MainDrawer()
                    .offset(x: 170)
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
}

struct MainDrawer: View {
    var body: some View {
        VStack {
            Toggle(isOn: /*@PLACEHOLDER=Is On@*/.constant(true)) {
                Text("UnderKG")
            }
    //                    Spacer()
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("미니기기 코리아")
            }
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("삼성 멤버스")
            }
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("클리앙")
            }
        }
        .offset(x: -170)
        .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

//struct NewsView: View {
//    news_content: NewsContent
//    var body: some viwe {
//        VStack {
//            Text()
//        }
//    }
//}

struct NewsList: View {
    var body: some View{
        List {
//            for i in dummies.count() {
//                Text(dummies[i].title)
//            }
            ForEach(1..<10){ i in
                Text("Test \(i)")
            }
        }
    }
}

//struct ContentView: View {
//    var menu: [MenuContent] = menuContents
//    @State var menuItemSelected: MenuContent = menuContents[0]
//    var body: some View {
//        ZStack {
//            List(menu) { menuItem in
//                MenuCell(menuItem: menuItem).onTapGesture {
//                    self.menuItemSelected = menuItem
//                }
//            }
//            self.selected(Menu: menuItemSelected)
//        }
//    }
//}

struct Preview: PreviewProvider {
    static var previews: some View {
        HStack {
//            MainDrawer()
//                .offset(x: 170)
            TabView {
                NewsList()
//                ContentView()
//                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    
//                 .tabItem {Color("AccentColor")
//                    Image(systemName: "phone.fill")
//                    Text("News")
//                  }
//               Text("Community 기능은 곧 만나 볼 수 있어요.")
//                 .tabItem {
//                    Image(systemName: "tv.fill")
//                    Text("Community")
//                 }
//                Text("Settings 기능은 곧 만나 볼 수 있어요.")
//                  .tabItem {
//                     Image(systemName: "tv.fill")
//                     Text("Settings")
//                  }
            }
        }
    }
}

