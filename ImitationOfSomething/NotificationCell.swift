//
//  NotificationCell.swift
//  ImitationOfSomething
//
//  Created by 山本学 on 2021/03/14.
//

import SwiftUI

struct NotificationCell: View {
    @State private var showPostImage = true
    
    var body: some View {
        
        HStack {
            Image("Joker")
                .resizable()
                .scaledToFit()
                .frame(width: 36, height: 36)
                .clipped()
                .cornerRadius(8)
            
            Text("Penguin").font(.system(size: 14, weight: .semibold))
                +
                Text(" liked one of your posts.")
                .font(.system(size: 15))
            
            Spacer()
            
            if showPostImage {
                Image("Joker")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(8)
            } else {
                Button(
                    action: {}, label: {
                    Text("Following")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                })
            }
        }
        .padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
