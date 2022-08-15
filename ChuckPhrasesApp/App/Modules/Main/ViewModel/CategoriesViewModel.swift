//
//  CategoriesViewModel.swift
//  ChuckPhrasesApp
//
//  Created by Pablo Manzur on 05/06/2022.
//

import Foundation
import UIKit

protocol CategoriesDelegate: AnyObject {
    func toggleLoading()
    func reloadData()
    func showError()
}

class CategoriesViewModel {
    
    private var categories = [String]()
    weak var delegate: CategoriesDelegate?
    let service: CategoriesServiceProtocol
    
    init(service: CategoriesServiceProtocol = CategoriesService()) {
        self.service = service
    }
    
    
    func getCategories() {
        self.service.getCategories { categories in
            self.categories = categories
            self.delegate?.toggleLoading()
            self.delegate?.reloadData()
        } onError: {
            self.delegate?.showError()
        }

    }
    
    
    func getCategoryAt(index: Int) -> String {
        categories[index]
    }
    
    
    func getCategoriesCount() -> Int {
        categories.count
    }
}


