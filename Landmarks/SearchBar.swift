//
//  SearchBar.swift
//  Landmarks
//
//  Created by 潘浩庭 on 25/11/2022.
//

import SwiftUI

struct SearchBar: View {
    @State var searchText = ""
    var body: some View {
        ZStack{
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                TextField("Search ..", text: $searchText)
            }
            .padding()
            
        }
        .frame(height: 40)
        .cornerRadius(20)
        .padding(.horizontal, 5)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1)
                .padding(.horizontal, 5)
        )
        
                
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
