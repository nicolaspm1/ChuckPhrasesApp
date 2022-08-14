//
//  CategoryPhraseViewModel.swift
//  ChuckPhrasesApp
//
//  Created by Pablo Manzur on 12/06/2022.
//

import Foundation
import UIKit

protocol CategoryPhraseDelegate: AnyObject {
    func toggleLoading()
    func loadDataInVC(categoryPhrase: CategoryPhrase)
    func showError()
}


class CategoryPhraseViewModel {
    
    weak var delegate: CategoryPhraseDelegate?
    private var service: CategoryPhraseServiceProtocol
    private var url: String
    
    
    init(url: String, service: CategoryPhraseServiceProtocol = CategoryPhraseService()) {
        self.url = url
        self.service = service
    }
    
    
    func getCategoryPhrase() {
        self.delegate?.toggleLoading()
        service.getCategoryPhrase(url: self.url, onComplete: { categoryPhrase in
            self.delegate?.loadDataInVC(categoryPhrase: categoryPhrase)
            
        }, onError: {
            self.delegate?.showError()
        })
    }
    
}
