//
//  CategoryPhraseViewModel.swift
//  ChuckPhrasesApp
//
//  Created by Pablo Manzur on 12/06/2022.
//

import Foundation

protocol CategoryPhraseDelegate {
    func toggleLoading()
    func loadDataInVC(categoryPhrase: CategoryPhrase)
    func showError()
}


class CategoryPhraseViewModel {
    
    private var delegate: CategoryPhraseDelegate
    private var service: CategoryPhraseService
    private var url: String
    
    
    init(url: String, delegate: CategoryPhraseDelegate, service: CategoryPhraseService) {
        
        self.url = url
        self.delegate = delegate
        self.service = service
    }
    
    
    func getCategoryPhrase() {
        self.delegate.toggleLoading()
        service.getCategoryPhrase(url: self.url, onComplete: { categoryPhrase in
            self.delegate.loadDataInVC(categoryPhrase: categoryPhrase)
            
        }, onError: {
            self.delegate.showError()
        })
    }
    
}
