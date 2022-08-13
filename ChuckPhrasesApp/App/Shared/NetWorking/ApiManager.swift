//
//  ApiManager.swift
//  ChuckPhrasesApp
//
//  Created by Pablo Manzur on 05/06/2022.
//

import Foundation
import Alamofire


final class ApiManager {
    
    static let shared = ApiManager()
    
    func get(url: String, completion: @escaping (Result<Data?, AFError>) -> Void){
        
        AF.request(url).response { response in
            completion(response.result)
        }
        
    }
}
