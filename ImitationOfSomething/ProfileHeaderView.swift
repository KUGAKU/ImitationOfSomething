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
                
                UserStatView()
                    .padding(.trailing)
                UserStatView()
                    .padding(.trailing)
                UserStatView()
                    .padding(.trailing)
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
                Button(action: {}, label: {
                    Text("Edit Profile")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: 360, height: 32)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                })
                Spacer()
            }
            .padding(.top)
        }
    }
}

struct UserStatView: View {
    var body: some View {
        VStack {
            Text("2")
                .font(.system(size: 15, weight: .semibold))
            Text("Followers")
                .font(.system(size: 15, weight: .regular))
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
