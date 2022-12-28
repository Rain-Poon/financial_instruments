//
//  SquareBox.swift
//  Landmarks
//
//  Created by 潘浩庭 on 20/12/2022.
//

import SwiftUI

struct SquareBox: View {
    var icon: String
    var name: String
    var price: String
    var percent: String
    var increase: String
    var body: some View {
        ZStack() {
            Rectangle()
                .frame(width:200, height:200)
                .cornerRadius(20)
                .foregroundColor(.white)
            VStack(alignment: .leading, spacing: 15) {
                Rectangle()
                    .frame(width:60, height:60)
                    .foregroundColor(.white.opacity(0))
                    .overlay() {
                        Image(icon)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:40, height: 40)
                            .overlay {
                                Circle().stroke(Color(UIColor.lightGray).opacity(0.1), lineWidth: 2)
                                    .frame(width:60, height:60)
                            }
                    }
                
                Text(name)
                    .font(.system(size: 20, weight: .bold))
                Text("$"+price)
                    .font(.system(size: 15, weight: .bold))
                HStack(spacing: 10) {
                    Color.green.opacity(0.3)
                        .frame(width:65, height: 25)
                        .cornerRadius(7)
                        .overlay() {
                            Text(percent)
                                .font(.system(size: 12, weight: .heavy))
                                .foregroundColor(.green)
                        }
                    Text(increase)
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(.gray.opacity(0.5))
                }
            }
            .frame(maxWidth: 170, alignment: .leading)
        }
    }
}

struct SquareBox_Previews: PreviewProvider {
    static var previews: some View {
        SquareBox(icon: "gamestop", name: "GameStop", price: "20", percent: "+ 10.00", increase: "+ $1")
    }
}
