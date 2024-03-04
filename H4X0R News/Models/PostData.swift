//
//  PostData.swift
//  H4X0R News
//
//  Created by Ben Mountain on 3/3/24.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: Int {
        return story_id
    }
    let story_id: Int
    let points: Int
    let title: String
    let url: String?
}
