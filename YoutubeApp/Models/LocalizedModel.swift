//
//  LocalizedModel.swift
//  YoutubeApp
//
//  Created by Maiqui Cedeño on 7/09/22.
//

import Foundation

// MARK: - Localized
struct Localized: Decodable {
    let title: String
    let description: String

    enum CodingKeys: String, CodingKey {
        case title
        case description
    }
}
