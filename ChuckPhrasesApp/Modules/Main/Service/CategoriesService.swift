//
//  CategoriesService.swift
//  ChuckPhrasesApp
//
//  Created by Pablo Manzur on 05/06/2022.
//

import Foundation




class CategoriesService {
    
    func getCategories(onComplete: @escaping([String]) -> Void, onError: @escaping()-> Void){
        
        ApiManager.shared.get(url: Constants().categoriesUrl) { response in
            
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
