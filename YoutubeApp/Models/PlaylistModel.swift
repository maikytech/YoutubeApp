//
//  PlaylistModel.swift
//  YoutubeApp
//
//  Created by Maiqui Cedeño on 7/09/22.
//

import Foundation

//MARK: - PlaylistModel
struct PlaylistModel: Decodable {
    let kind: String
    let etag: String
    let nextPageToken: String
    let pageInfo: PageInfo
    let items: [ItemPlaylistResponse]
}

//MARK: - ItemPlaylistResponse
struct ItemPlaylistResponse: Decodable {
    let kind: String
    let etag: String
    let id: String
    let snippet: SnippetPlaylistResponse
    let contentDetails: ContentDetailsPlaylistResponse
}

//MARK: - SnippetPlaylistResponse
struct SnippetPlaylistResponse: Decodable {
    let publishedAt: String
    let channelId: String
    let title: String
    let description: String
    let thumbnails: ThumbnailsPlaylistResponse
    let channelTitle: String
    let localized: Localized
}

//MARK: - ContentDetailsPlaylistResponse
struct ContentDetailsPlaylistResponse: Decodable {
    let itemCount: Int
}

//MARK: - ThumbnailsPlaylistResponse
struct ThumbnailsPlaylistResponse: Decodable {
    let medium: Medium
    let high: High
}

//MARK: - Medium
struct Medium: Decodable {
    let url: String
    let width: Int
    let height: Int
}

//MARK: - High
struct High: Decodable {
    let url: String
    let width: Int
    let height: Int
}
