//
//  UploadPostView.swift
//  ImitationOfSomething
//
//  Created by 山本学 on 2021/03/07.
//

import SwiftUI

struct UploadPostView: View {
    
    @State var isTaped: Bool = false
    @State var captionText: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                if (isTaped) {
                    VStack {
                        HStack(alignment: .top) {
                            Image("Joker")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 96, height: 96)
                                .clipped()
                            
                            TextField("Enter your caption..", text: $captionText)
                        }.padding()
                        
                        Button(action: {}, label: {
                            Text("Share")
                                .font(.system(size: 16, weight: .semibold))
                                .frame(width: 360, height: 50)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(5.0)
                        })
                    }
                    
                } else {
                    HStack {
                        Spacer()
                        Button(action: {
                            isTaped = true
                        }, label: {
                                Text("Upload")
                                    .font(.system(size: 16, weight: .semibold))
                                    .frame(width: 360, height: 50)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(5.0)
                            })
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .cornerRadius(8.0)
                        Spacer()
                    }
                }
            }
        }
        .padding(.top, 16.0)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
