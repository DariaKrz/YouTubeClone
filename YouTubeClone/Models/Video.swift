//
//  Video.swift
//  YouTubeClone
//
//  Created by Дарья Кукурудза on 16.10.2023.
//

import Foundation


struct Video: Codable {
    let id: String
    let name: String
    let image: String
    
    let author: String
    let avatar: String
    
    let followers: Int
    let date: String
    
    let favourites: Bool
    
    let url: String
}
