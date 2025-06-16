//
//  PreviewProvider.swift
//  ThreadsTutorial
//
//  Created by Cesario Nivar on 6/16/25.
//

import SwiftUI


class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Max Verstappen", email: "max@gmail.com", username: "maxverstappen1")
}
