//
//  CategoryPhrase.swift
//  ChuckPhrasesApp
//
//  Created by Pablo Manzur on 12/06/2022.
//

import Foundation

struct CategoryPhrase: Codable {
    let categories: [String]
    let createdAt: String
    let id, updatedAt: String
    let url: String
    let value: String
}
