//
//  WatchlistItem.swift
//  Landmarks
//
//  Created by 潘浩庭 on 9/12/2022.
//

import SwiftUI

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct WatchlistItem: View {
    @State var isStar: Bool=false
    var name: String
    var icon: String
    var change: String
    var price: String
    func removeCmd() {}
    func cancelCmd() {}
    var body: some View {
        ZStack() {
            Rectangle()
                .frame(width:UIScreen.screenWidth-40, height: 80)
                .foregroundColor(.white)
                .cornerRadius(15)
            HStack(spacing: 20) {
                Button(action: {
                    isStar = !isStar
                }) {
                    Image(systemName: "star.fill")
                        .foregroundColor(isStar ? .yellow : .black)
                }
                Image(icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:40, height: 40)
                    .overlay {
                        Circle().stroke(Color(UIColor.lightGray).opacity(0.1), lineWidth: 2)
                            .frame(width:60, height:60)
                    }
                    .padding(5)
                VStack(alignment: .leading, spacing: 5) {
                    Text(name)
                        .font(.system(size: 10, weight: .bold))
                    Text(change)
                        .font(.system(size: 10, weight: .bold))
                        .foregroundColor(.green)
                }
                WatchlistChart(swiftColor: UIColor(red: 0, green: 1, blue: 0, alpha: 1))
                Text("$"+price)
                    .font(.system(size: 12, weight: .heavy))
                Menu {
                        Button("Remove", action: removeCmd)
                        Button("Cancel", action: cancelCmd)
                    } label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.gray)
                            .rotationEffect(.degrees(90))
                    }
                
            }
        }
    }
}

struct WatchlistItem_Previews: PreviewProvider {
    static var previews: some View {
        WatchlistItem(name: "GameStop", icon: "gamestop", change: "+0.8%", price: "20")
    }
}
