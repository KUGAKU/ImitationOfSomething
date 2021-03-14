//
//  UploadPostView.swift
//  ImitationOfSomething
//
//  Created by 山本学 on 2021/03/07.
//

import SwiftUI

struct UploadPostView: View {
    
    @State var selectedImage: UIImage?
    @State var postImage: Image?
    @State var captionText: String = ""
    @State var imagePickerPresented = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                if (postImage != nil) {
                    VStack {
                        HStack(alignment: .top) {
                            postImage?
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
                            imagePickerPresented.toggle()
                        }, label: {
                                Text("Upload")
                                    .font(.system(size: 16, weight: .semibold))
                                    .frame(width: 360, height: 50)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(5.0)
                        }).sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: {
                            ImagePicker(image: $selectedImage)
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

extension UploadPostView {
    func loadImage() {
        guard let selectedImage = selectedImage else {
            return
        }
      postImage = Image(uiImage: selectedImage)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
