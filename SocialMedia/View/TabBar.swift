//
//  TabBar.swift
//  SocialMedia
//
//  Created by eyh.mac on 14.08.2023.
//

import SwiftUI

struct TabBar: View  {
    @State private var selectedTab = 0
        
        var body: some View {
            TabView(selection: $selectedTab) {
              Home()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                    .tag(0)
                
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                    .tag(1)
                
                profile()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Person")
                    }
                    .tag(2)
            }
            .accentColor(.white)
        }
    }

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .preferredColorScheme(.dark)
    }
}
