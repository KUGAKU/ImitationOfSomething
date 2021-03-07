//
//  SearchView.swift
//  ImitationOfSomething
//
//  Created by 山本学 on 2021/03/07.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    
    var body: some View {
        ScrollView {
            
            //search bar
            SearchBarView(text: $searchText)
                .padding()
            // grid view/user list view
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
