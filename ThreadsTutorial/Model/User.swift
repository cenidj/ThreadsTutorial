//
//  User.swift
//  ThreadsTutorial
//
//  Created by Cesario Nivar on 6/15/25.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
