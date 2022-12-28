//
//  TopBar.swift
//  Landmarks
//
//  Created by 潘浩庭 on 25/11/2022.
//

import SwiftUI

struct TopBar: View {
    @State var isPressed: Bool=false
    @State var Icon: String="magnifyingglass"
    var title: String
    var body: some View {
        VStack(){
            HStack{
                Text(title)
                    .fontWeight(.heavy)
                    .padding(.leading, 5.0)
                    .font(.title)
                Spacer()
                Button(action: {
                    print("button pressed")
                    if (isPressed==false) {
                        isPressed=true
                    } else {
                        isPressed=false
                    }
                }) {
                    Image(systemName: {isPressed ? "multiply" : "magnifyingglass"}())
                }
                .foregroundColor(Color.black)
            }
            if (isPressed==true){
                SearchBar()
            }
        }
        .padding()
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar(title: "Welcome!")
    }
}
