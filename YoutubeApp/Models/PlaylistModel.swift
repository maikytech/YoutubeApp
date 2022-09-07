//
//  PlaylistModel.swift
//  YoutubeApp
//
//  Created by Maiqui Cedeño on 7/09/22.
//

import Foundation

struct PlaylistModel: Decodable {
    let kind: String
    let etag: String
    let nextPageToken: String
    let pageInfo: PageInfo
    let items: [Items]
}

struct PageInfo: Decodable {
    let totalResults: Int
    let resultsPerPage: Int
}

struct Items: Decodable {
    let kind: String
    let etag: String
    let id: String
    let snippet: Snippet
    let contentDetails: ContentDetails
}

struct Snippet: Decodable {
    let publishedAt: String
    let channelId: String
    let title: String
    let description: String
    let thumbnails: Thumbnails
    let channelTitle: String
    let localized: Localized
}

struct ContentDetails: Decodable {
    let itemCount: Int
}

struct Thumbnails: Decodable {
    let medium: Medium
    let high: High
}

struct Localized: Decodable {
    let title: String
    let description: String
}


struct Medium: Decodable {
    let url: String
    let width: Int
    let height: Int
}

struct High: Decodable {
    let url: String
    let width: Int
    let height: Int
}
