//
//  SearchView.swift
//  ImitationOfSomething
//
//  Created by 山本学 on 2021/03/07.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    @State var isSearchMode = false
    
    var body: some View {
        ScrollView {
            SearchBarView(
                text: $searchText, isEditing: $isSearchMode
            ).padding()
            
            ZStack {
                if (isSearchMode) {
                    UserListView()
                } else {
                    PostGridViewView()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
