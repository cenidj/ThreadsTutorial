//
//  LoginViewModel.swift
//  ThreadsTutorial
//
//  Created by Cesario Nivar on 6/14/25.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""

    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
