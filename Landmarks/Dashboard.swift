//
//  Dashboard.swift
//  Landmarks
//
//  Created by 潘浩庭 on 26/12/2022.
//

import SwiftUI

func addItem() {}

struct Dashboard: View {
    var body: some View {
        VStack() {
            TopBar(title: "Dashboard")
            
            ZStack() {
                Color.blue.opacity(0.05)
                    .ignoresSafeArea()
                VStack() {
                    Spacer(minLength: 30)
                    HStack() {
                        Text("Gainers and Losers")
                            .font(.system(size: 20, weight: .heavy))
                        Spacer()
                        Button(action: addItem) {
                            Label("See all", systemImage: "arrow.right")
                                .labelStyle(.titleAndIcon)
                        }
                    }
                    .frame(maxWidth: UIScreen.screenWidth-40)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            
                            SquareBox(icon: "gamestop", name: "GameStop", price: "20", percent: "+ 10.00", increase: "+ $1")
                            SquareBox(icon: "apple", name: "Apple", price: "20", percent: "+ 10.00", increase: "+ $1")
                            SquareBox(icon: "netflix", name: "Netflix", price: "20", percent: "+ 10.00", increase: "+ $1")
                            
                        }
                    }
                    .frame(maxWidth: UIScreen.screenWidth-40)
                    Spacer(minLength: 30)
                    HStack() {
                        Text("Your watchlist")
                            .font(.system(size: 20, weight: .heavy))
                        Spacer()
                        Button(action: addItem) {
                            Label("See all", systemImage: "arrow.right")
                                .labelStyle(.titleAndIcon)
                        }
                    }
                    .frame(maxWidth: UIScreen.screenWidth-40)
                    ScrollView() {
                        VStack() {
                            WatchlistItem(name: "Nvidia", icon: "nvidia", change: "+0.8%", price: "20")
                            WatchlistItem(name: "Nike", icon: "nike", change: "+0.8%", price: "20")
                            WatchlistItem(name: "Amazon", icon: "amazon", change: "+0.8%", price: "20")
                            WatchlistItem(name: "Disney", icon: "disney", change: "+0.8%", price: "20")
                            WatchlistItem(name: "Tesla", icon: "tesla", change: "+0.8%", price: "20")
                        }
                    }
                }
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
