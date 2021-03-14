//
//  AuthenticationViewModel.swift
//  ImitationOfSomething
//
//  Created by 山本学 on 2021/03/14.
//

import SwiftUI
import Firebase

class AuthentiocationViewModel: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthentiocationViewModel()
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func login() {
        print("Login")
    }
    
    func register(withEmail email: String, password: String, image: UIImage?, fullname: String, username: String) {
        guard let image = image else { return }
        ImageUploader.uploadImage(image: image) { imageUrl in
            Auth.auth().createUser(withEmail: email, password: password, completion: { result, error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                
                guard let user = result?.user else {
                    return
                }
                self.userSession = user
                print("Successfully registerd user...\(user.uid)")
                
                let data = ["email": email,
                            "username": username,
                            "fullname": fullname,
                            "profileImageUrl": imageUrl,
                            "uid": user.uid]
                
                print("data:\(data)")
                
                Firestore.firestore().collection("users").document(user.uid).setData(data) { _ in
                    print("Successfully upload user data...")
                    self.userSession = user
                }
            })
        }
    }
    
    func sigout() {
        self.userSession = nil
        try? Auth.auth().signOut()
    }
    
    func resetPassword() {
        print("ResetPassword")
    }
    
    func fetchUser() {
        print("FetchUser")
    }
}
