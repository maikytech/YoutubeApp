//
//  VideoModel.swift
//  YoutubeApp
//
//  Created by Maiqui Cedeño on 7/09/22.
//

import Foundation

// MARK: - VideoModel
struct VideoModel: Decodable {
    let kind: String
    let etag: String
    let items: [ItemVideoResponse]
    let pageInfo: PageInfo
}

// MARK: - ItemVideoResponse
struct ItemVideoResponse: Decodable {
    let kind: String
    let etag: String
    let id: String
    let snippet: SnippetVideoResponse
    let contentDetails: ContentDetailsVideoResponse
    let status: Status
    let statistics: Statistics
    let topicDetails: TopicDetails
}

// MARK: - ContentDetailsVideoResponse
struct ContentDetailsVideoResponse: Decodable {
    let duration: String
    let dimension: String
    let definition: String
    let caption: String
    let licensedContent: Bool
    let projection: String
}

// MARK: - SnippetVideoResponse
struct SnippetVideoResponse: Decodable {
    let publishedAt: Date
    let channelId: String
    let title: String
    let description: String
    let thumbnails: ThumbnailsVideoResponse
    let channelTitle: String
    let tags: [String]
    let categoryID: String
    let liveBroadcastContent: String
    let localized: Localized
    let defaultAudioLanguage: String
    

    enum CodingKeys: String, CodingKey {
        case publishedAt
        case channelId
        case title
        case description
        case thumbnails
        case channelTitle
        case tags
        case categoryID = "categoryId"
        case liveBroadcastContent
        case localized
        case defaultAudioLanguage
    }
}

// MARK: - ThumbnailsVideoResponse
struct ThumbnailsVideoResponse: Decodable {
    let thumbnailsDefault: Default
    let medium: Default
    let high: Default
    let standard: Default
    let maxres: Default

    enum CodingKeys: String, CodingKey {
        case thumbnailsDefault = "default"
        case medium
        case high
        case standard
        case maxres
    }
}

// MARK: - Default
struct Default: Decodable {
    let url: String
    let width: Int
    let height: Int
}

// MARK: - Statistics
struct Statistics: Decodable {
    let viewCount: String
    let likeCount: String
    let favoriteCount: String
    let commentCount: String
}

// MARK: - Status
struct Status: Decodable {
    let uploadStatus: String
    let privacyStatus: String
    let license: String
    let embeddable: Bool
    let publicStatsViewable: Bool
    let madeForKids: Bool
}

// MARK: - TopicDetails
struct TopicDetails: Decodable {
    let topicCategories: [String]
}
