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
        print("")
    }
    
    
}
