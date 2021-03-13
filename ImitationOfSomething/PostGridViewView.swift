//
//  PostGridViewView.swift
//  ImitationOfSomething
//
//  Created by 山本学 on 2021/03/08.
//

import SwiftUI

struct PostGridViewView: View {
    
    private let items = [GridItem(), GridItem(), GridItem()]
    private let width = UIScreen.main.bounds.width / 3
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 2, content: {
            ForEach( 0 ..< 20) { _ in
                NavigationLink(
                    destination: FeedView(),
                    label: {
                        Image("Penguin")
                            .resizable()
                            .scaledToFill()
                            .frame(width: width, height: width)
                            .clipped()
                    }
                )
            }
        }
        )
    }
}

struct PostGridViewView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridViewView()
    }
}
