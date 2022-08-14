//
//  Constants.swift
//  ChuckPhrasesApp
//
//  Created by Pablo Manzur on 05/06/2022.
//

import Foundation

struct KBaseUrl {
    static let baseUrl = Bundle.main.object(forInfoDictionaryKey: "BaseUrl") as! String
}


struct K {
    static let categoriesUrl = "\(KBaseUrl.baseUrl)categories"
    static let randonCategoryPhraseUrl = "\(KBaseUrl.baseUrl)random?category="
    static let randomPhrase = "\(KBaseUrl.baseUrl)random"
}
