//
//  CurrentProfileViewModel.swift
//  ThreadsTutorial
//
//  Created by Cesario Nivar on 6/15/25.
//

import Foundation
import Combine

class CurrentProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    
    
    init() {
        setupSubscriber()
    }
    
    private func setupSubscriber() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
        }
        .store(in: &cancellables)
    }
}
