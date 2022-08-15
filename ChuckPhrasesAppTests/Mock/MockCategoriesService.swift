//
//  MockCategoriesService.swift
//  ChuckPhrasesAppTests
//
//  Created by Pablo Manzur on 14/08/2022.
//

import Foundation
@testable import ChuckPhrasesApp

class MockCategoriesService:CategoriesServiceProtocol {
    func getCategories(onComplete: @escaping ([String]) -> Void, onError: @escaping () -> Void) {
        
        let url = Bundle.main.url(forResource: "Mock", withExtension: "json")
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let jsonData = try Data(contentsOf: url!)
            let model = try decoder.decode(Categories.self, from: jsonData)
            onComplete(model)
            
        } catch _ {
            onError()
        }
        
    }
}
