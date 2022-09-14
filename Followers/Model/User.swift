//
//  User.swift
//  Followers
//
//  Created by Ума Мирзоева on 10.01.2022.
//

import Foundation

// MARK: - Welcome
struct User: Codable {
    let login: String
    let avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let following: Int
    let followers: Int
    let createdAt: String
}
