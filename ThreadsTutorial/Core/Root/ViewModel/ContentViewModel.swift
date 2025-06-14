//
//  ContentViewModel.swift
//  ThreadsTutorial
//
//  Created by Cesario Nivar on 6/14/25.
//

import Foundation
import Combine
import Firebase
import FirebaseAuth


class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private var cancellables = Set<AnyCancellable>()
    
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        AuthService.shared.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }.store(in: &cancellables)
    }
}
