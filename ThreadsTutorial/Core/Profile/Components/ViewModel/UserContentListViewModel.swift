//
//  UserContentListViewModel.swift
//  ThreadsTutorial
//
//  Created by Cesario Nivar on 6/21/25.
//

import Foundation


class UserContentListViewModel: ObservableObject {
    @Published var threads = [Thread]()
    
    let user: User
    
    init(user: User) {
        self.user = user
        Task { try await fetchUserThreads() }
    }
    
    @MainActor
    func fetchUserThreads() async throws{
        self.threads = try await ThreadService.fethUserThreads(uid: user.id)
    }
    
}
