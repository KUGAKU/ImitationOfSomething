//
//  SearchBarView.swift
//  ImitationOfSomething
//
//  Created by 山本学 on 2021/03/07.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(8.0)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(
                                minWidth: 0,
                                maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                                minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,
                                alignment: .leading
                            )
                            .padding(.leading, 8)
                    }
                )
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(text: .constant("Serach..."))
    }
}