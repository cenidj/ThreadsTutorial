//
//  ProfileViewModel.swift
//  ThreadsTutorial
//
//  Created by Cesario Nivar on 6/15/25.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    
    private var cancellables = Set<AnyCancellable>()
    
    
    init() {
        setupSubscriber()
    }
    
    private func setupSubscriber() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
            print("DEBUG: user in view model from combine is \(String(describing: user))")
        }
        .store(in: &cancellables)
    }
}
