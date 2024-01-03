//
//  AuthViewModel.swift
//  MicroUI 2023
//
//  Created by Satoshi Mitsumori on 12/31/23.
//

import Foundation

final class AuthViewModel: ObservableObject {
    
    @MainActor
    func createUserRegistration(email: String, password: String, fullname: String, username: String) async throws {
        try await AuthService.shared.createNewUser(withEmail: email, password: password, fullname: fullname, username: username)
        
        
        print("Created new user")
    }
    
    @MainActor
    func resetUserPassword(email: String) async throws {
        try await AuthService.shared.resetUserPassword(withEmail: email)
        
        print("Password resent link sent to user email \(email)")
    }
    
    @MainActor
    func loginUser(email: String, password: String) async throws {
        try await AuthService.shared.loginUser(withEmail: email, password: password)
    }
}
