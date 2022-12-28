//
//  NavigationBar.swift
//  Landmarks
//
//  Created by 潘浩庭 on 26/11/2022.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        TabView {
            WelcomePage()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Dashboard()
                .tabItem {
                    Label("Dashboard", systemImage: "list.dash")
                }
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
