//
//  Card.swift
//  Landmarks
//
//  Created by 潘浩庭 on 25/11/2022.
//

import SwiftUI

struct Card: View {
    @State var isPressed: Bool=false
    var name: String
    var icon: String
    var body: some View {
        ZStack() {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(15)
            VStack() {
                Image(icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:40, height: 40)
                    .overlay {
                        Circle().stroke(Color(UIColor.lightGray).opacity(0.1), lineWidth: 2)
                            .frame(width:60, height:60)
                    }
                    .padding(5)
                Text(name)
                    .padding(10)
                    .fontWeight(.heavy)
                    .font(.title2)
                Button(action: {
                    print("button pressed")
                    if (isPressed==false) {
                        isPressed=true
                    } else {
                        isPressed=false
                    }
                }) {
                    Text(isPressed ? "Followed" : "Follow")
                        .padding(.all, 7.0)
                        .bold()
                }
                .frame(width: 130)
                .background(isPressed ? Color(UIColor.white) : Color(UIColor.black))
                .border((isPressed ? .gray.opacity(0.1) : .black), width: 3)
                .cornerRadius(7)
                .foregroundColor(isPressed ? .black : .white)
                
            }
        }
        .frame(width:170, height: 170)
        
        
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(name: "GameStop", icon:"gamestop")
    }
}
