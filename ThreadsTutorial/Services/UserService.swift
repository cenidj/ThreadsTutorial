//
//  UserService.swift
//  ThreadsTutorial
//
//  Created by Cesario Nivar on 6/15/25.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseFirestore

class UserService {
    @Published var currentUser: User?
    
     static let shared = UserService()

    init() {
        Task {
            try await fetchCurrentUser()
        }
    }
    
    @MainActor
    func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let snapchot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try snapchot.data(as: User.self)
        self.currentUser = user
        
        print("DEBUG: User is \(user)")
    }
}
