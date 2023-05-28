//
//  TabBarView.swift
//  Nft
//
//  Created by Lara K on 07/11/1444 AH.
//

import SwiftUI

struct TabBarView: View {
    
    @State private var selection = 1

    init() {
        UITabBar.appearance().barTintColor = UIColor(named: "color2")
    }
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Image(systemName: "house")
            Text("Home") }
            
            ExploreView()
                .tabItem {Image(systemName: "safari.fill")
            Text("Explore") }
            
            HomeView()
                .tabItem { Image(systemName: "plus.square.fill")
            Text("Create") }
            
            HomeView()
                .tabItem { Image(systemName: "bell.fill")
            Text("Notification") }
            
            ExploreView()
                .tabItem { Image(systemName: "person.fill")
            Text("Profile")  }
        } .accentColor(.white)
            
    }
}


struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
