//
//  LocalizedModel.swift
//  YoutubeApp
//
//  Created by Maiqui Cedeño on 7/09/22.
//

import Foundation

// MARK: - Localized
struct Localized: Codable {
    let title, localizedDescription: String

    enum CodingKeys: String, CodingKey {
        case title
        case localizedDescription = "description"
    }
}
