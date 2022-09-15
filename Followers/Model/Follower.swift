//
//  Followers.swift
//  Followers
//
//  Created by Ума Мирзоева on 10.01.2022.
//

import Foundation

struct Follower: Codable {
    let uuid = UUID()

    private enum CodingKeys : String, CodingKey { case login, avatarUrl }
    
    var login: String
    var avatarUrl: String
}

extension Follower : Hashable {
    static func ==(lhs: Follower, rhs: Follower) -> Bool {
        return lhs.login == rhs.login
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(uuid)
    }
}
