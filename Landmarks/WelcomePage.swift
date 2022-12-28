//
//  WelcomePage.swift
//  Landmarks
//
//  Created by 潘浩庭 on 25/11/2022.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack() {
            TopBar(title: "Welcome!")
            ZStack() {
                Rectangle()
                    .foregroundColor(.blue.opacity(0.05))
                ScrollView {
                    VStack() {
                        HStack() {
                            Card(name: "Apple", icon:"apple")
                            Card(name: "GameStop", icon:"gamestop")
                        }
                        HStack() {
                            Card(name: "Disney", icon:"disney")
                            Card(name: "Tesla", icon:"tesla")
                        }
                        HStack() {
                            Card(name: "Nike", icon:"nike")
                            Card(name: "Amazon", icon:"amazon")
                        }
                        HStack() {
                            Card(name: "Nvidia", icon:"nvidia")
                            Card(name: "Netflix", icon:"netflix")
                        }
                        
                    }
                }
                .padding(.top)
            }
            
            
            Spacer()
        }
    }
}

struct WelcomePage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePage()
    }
}
