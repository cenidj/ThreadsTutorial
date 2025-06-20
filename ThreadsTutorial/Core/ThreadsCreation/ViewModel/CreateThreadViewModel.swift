//
//  CreateThreadViewModel.swift
//  ThreadsTutorial
//
//  Created by Cesario Nivar on 6/20/25.
//

import Foundation
import Firebase
import FirebaseAuth

class CreateThreadViewModel: ObservableObject {
    @Published var caption = ""
 
    func uploadThread() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let thread = Thread(ownerUid: uid, caption: caption, timeStamp: Timestamp(), likes: 0)
        try await ThreadService.uploadThread(thread)
    }
}
