//
//  User.swift
//  Followers
//
//  Created by Ума Мирзоева on 10.01.2022.
//

import Foundation

struct User: Codable {
    var login: String
    var avatatUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
