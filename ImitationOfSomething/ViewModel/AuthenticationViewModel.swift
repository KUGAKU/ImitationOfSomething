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
    
    func register() {
        print("Regsiter")
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
