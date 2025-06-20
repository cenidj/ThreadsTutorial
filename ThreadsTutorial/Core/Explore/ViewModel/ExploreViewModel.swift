//
//  ExploreViewModel.swift
//  ThreadsTutorial
//
//  Created by Cesario Nivar on 6/16/25.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task {
            try await fetchUsers()
        }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
