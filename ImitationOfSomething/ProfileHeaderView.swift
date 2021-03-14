//
//  ProfileHeaderView.swift
//  ImitationOfSomething
//
//  Created by 山本学 on 2021/03/14.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("Joker")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading)
                Spacer()
                
                UserStatView(value: 3, title: "Posts")
                UserStatView(value: 2, title: "Followers")
                UserStatView(value: 1, title: "Following")
            }
            
            
            Text("Joker")
                .padding([.leading, .top])
                .font(.system(size: 15, weight: .semibold))
            Text("Gotham's Dark Knight || Billionaire")
                .padding(.leading)
                .padding(.top, 1)
                .font(.system(size: 15))
            
            HStack {
                Spacer()
                ProfileActionButtonView()
                Spacer()
            }
            .padding(.top)
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
