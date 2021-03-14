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
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func login() {
        print("Login")
    }
    
    func register(withEmail email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password, completion: { result, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let user = result?.user else {
                return
            }
            self.userSession = user
            print("Successfully registerd user...")
        })
    }
    
    func sigout() {
        print("Signout")
    }
    
    func resetPassword() {
        print("ResetPassword")
    }
    
    func fetchUser() {
        print("FetchUser")
    }
}
