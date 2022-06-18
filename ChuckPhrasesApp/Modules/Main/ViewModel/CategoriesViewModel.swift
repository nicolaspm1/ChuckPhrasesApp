//
//  CategoriesViewModel.swift
//  ChuckPhrasesApp
//
//  Created by Pablo Manzur on 05/06/2022.
//

import Foundation

protocol CategoriesDelegate {
    func toggleLoading()
    func reloadData()
    func showError()
}

class CategoriesViewModel {
    
    private var categories = [String]()
    private let delegate: CategoriesDelegate
    private let service: CategoriesService
    
    init(service: CategoriesService, delegate: CategoriesDelegate) {
        self.service = service
        self.delegate = delegate
    }
    
    
    func getCategories() {
        self.service.getCategories { categories in
            self.categories = categories
            self.delegate.toggleLoading()
            self.delegate.reloadData()
        } onError: {
            self.delegate.showError()
        }

    }
    
    
    func getCategoryAt(index: Int) -> String {
        categories[index]
    }
    
    
    func getCategoriesCount() -> Int {
        categories.count
    }
}


