//
//  CategoriesService.swift
//  ChuckPhrasesApp
//
//  Created by Pablo Manzur on 05/06/2022.
//

import Foundation


protocol CategoriesServiceProtocol{
    func getCategories(onComplete: @escaping([String]) -> Void, onError: @escaping()-> Void)
}


class CategoriesService: CategoriesServiceProtocol {
    
    func getCategories(onComplete: @escaping([String]) -> Void, onError: @escaping()-> Void){
        
        ApiManager.shared.get(url: K.categoriesUrl) { response in
            
            switch response {
                case .success(let data):
                    do {
                        if let data = data {
                            let decoder = JSONDecoder()
                            decoder.keyDecodingStrategy = .convertFromSnakeCase
                            
                            let categoriesResponse = try decoder.decode(Categories.self, from: data)
                            onComplete(categoriesResponse)
                        }
                        else {
                            onError()
                        }
                        
                    } catch  {
                        onError()
                    }
                    
                case .failure(_):
                    onError()
                    
            }
        }
        
    }
}
