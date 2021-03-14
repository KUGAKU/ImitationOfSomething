//
//  ImageUploader.swift
//  ImitationOfSomething
//
//  Created by 山本学 on 2021/03/14.
//

import UIKit
import Firebase

struct ImageUploader {
    static func uploadImage(image: UIImage, completion: @escaping(String) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_images/\(filename)")
        ref.putData(imageData, metadata: nil) { _, error in
            if  let error = error {
                print("DEBUG: Failed to upload image \(error.localizedDescription)")
                return
            }
            
            print("DEBUG: Successfully upload image...")
            
            ref.downloadURL { url, _ in
                guard let imageUrl = url?.absoluteString else { return }
                completion(imageUrl)
            }
        }
        
    }
}
