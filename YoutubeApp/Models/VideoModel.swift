//
//  VideoModel.swift
//  YoutubeApp
//
//  Created by Maiqui Cedeño on 7/09/22.
//

import Foundation

// MARK: - VideoModel
struct VideoModel: Codable {
    let kind, etag: String
    let items: [ItemVideoResponse]
    let pageInfo: PageInfo
}

// MARK: - ItemVideoResponse
struct ItemVideoResponse: Codable {
    let kind, etag, id: String
    let snippet: SnippetVideoResponse
    let contentDetails: ContentDetailsVideoResponse
    let status: Status
    let statistics: Statistics
    let topicDetails: TopicDetails
}

// MARK: - ContentDetailsVideoResponse
struct ContentDetailsVideoResponse: Codable {
    let duration, dimension, definition, caption: String
    let licensedContent: Bool
    let projection: String
}

// MARK: - SnippetVideoResponse
struct SnippetVideoResponse: Codable {
    let publishedAt: Date
    let channelID, title, snippetDescription: String
    let thumbnails: ThumbnailsVideoResponse
    let channelTitle: String
    let tags: [String]
    let categoryID, liveBroadcastContent: String
    let localized: Localized
    let defaultAudioLanguage: String
    

    enum CodingKeys: String, CodingKey {
        case publishedAt
        case channelID = "channelId"
        case title
        case snippetDescription = "description"
        case thumbnails, channelTitle, tags
        case categoryID = "categoryId"
        case liveBroadcastContent, localized, defaultAudioLanguage
    }
}

// MARK: - ThumbnailsVideoResponse
struct ThumbnailsVideoResponse: Codable {
    let thumbnailsDefault, medium, high, standard: Default
    let maxres: Default

    enum CodingKeys: String, CodingKey {
        case thumbnailsDefault = "default"
        case medium, high, standard, maxres
    }
}

// MARK: - Default
struct Default: Codable {
    let url: String
    let width, height: Int
}

// MARK: - Statistics
struct Statistics: Codable {
    let viewCount, likeCount, favoriteCount, commentCount: String
}

// MARK: - Status
struct Status: Codable {
    let uploadStatus, privacyStatus, license: String
    let embeddable, publicStatsViewable, madeForKids: Bool
}

// MARK: - TopicDetails
struct TopicDetails: Codable {
    let topicCategories: [String]
}
