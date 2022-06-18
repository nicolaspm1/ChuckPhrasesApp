//
//  CategoryPhraseService.swift
//  ChuckPhrasesApp
//
//  Created by Pablo Manzur on 12/06/2022.
//

import Foundation

class CategoryPhraseService {
    
    func getCategoryPhrase(url: String, onComplete: @escaping(CategoryPhrase) -> Void, onError: @escaping () -> Void) {
        
        
        ApiManager.shared.get(url: url) { response in
            switch response {
                case.success(let data):
                    do {
                        if let data = data {
                            let decoder = JSONDecoder()
                            decoder.keyDecodingStrategy = .convertFromSnakeCase
                            let categoryPrhaseResponse = try decoder.decode(CategoryPhrase.self, from: data)
                            onComplete(categoryPrhaseResponse)
                            
                        } else {
                           onError()
                        }
                    
                    } catch{
                        onError()
                        print(error)
                    }
                    
                case .failure(_):
                    onError()
                    
            }
        }
    }
}
