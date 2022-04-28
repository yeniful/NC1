//
//  test103App.swift
//  test103
//
//  Created by Yeni Hwang on 2022/04/27.
//

import SwiftUI

@main
struct test103App: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                MainMapView()
                    .tabItem {
                        Image(systemName: "map")
                    }
                
                FoodListView()
                    .tabItem {
                        Image(systemName: "fork.knife")
                    }
                
                SpotListView()
                    .tabItem {
                        Image(systemName: "figure.walk")
                    }
                
                SettingView()
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                    }
                MenuView()
                    .tabItem {
                        Image(systemName: "leaf")
                    }
                
            }/*.onAppear() {
                UITabBar.appearance()
                    .barTintColor = .white
            }*/
        }
    }
}
