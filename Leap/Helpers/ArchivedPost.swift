//
//  ArchivedPost.swift
//  Leap
//
//  Created by Uma Dukle on 10/22/22.
//

import Foundation

struct ArchivedPost {
    var task: String
    var body: String
}

extension ArchivedPost {
    static let sampleData: [ArchivedPost] = [
        ArchivedPost(task: "Lorem ipsum dolor sit amet.", body: "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
        ArchivedPost(task: "Metus aliquam eleifend mi in nulla posuere.", body: "Feugiat in fermentum posuere urna nec tincidunt praesent semper. Sagittis purus sit amet volutpat consequat mauris nunc congue nisi."),
        ArchivedPost(task: "Lectus sit amet est placerat in egestas erat imperdiet.", body: "Condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Sit amet volutpat consequat mauris nunc. Cras semper auctor neque vitae tempus quam.")
    ]
}
