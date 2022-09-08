//
//  PageInfo.swift
//  YoutubeApp
//
//  Created by Maiqui Cedeño on 7/09/22.
//

import Foundation

//MARK: - PageInfo
struct PageInfo: Decodable {
    let totalResults: Int
    let resultsPerPage: Int
}
