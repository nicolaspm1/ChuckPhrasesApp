//
//  CategoryPhraseViewController.swift
//  ChuckPhrasesApp
//
//  Created by Pablo Manzur on 12/06/2022.
//

import UIKit

class CategoryPhraseViewController: UIViewController {
    
    @IBOutlet weak var phraseLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var phraseView: UIView!
    
    private let service = CategoryPhraseService()
    
    private var model: CategoryPhraseViewModel?
    
    var categoryPhraseUrl: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpInternalView()

        if let url = categoryPhraseUrl {
            self.model = CategoryPhraseViewModel(url: url, delegate: self, service: self.service)
            
            self.model?.getCategoryPhrase()
        }
        
    }
    
    private func setUpInternalView() {
        self.phraseView.setUp()
    }

}


extension CategoryPhraseViewController: CategoryPhraseDelegate {
    
    func toggleLoading() {
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
    }
    
    func loadDataInVC(categoryPhrase: CategoryPhrase) {
        DispatchQueue.main.async {
            self.phraseLabel.text = categoryPhrase.value
            self.activityIndicator.stopAnimating()
            self.activityIndicator.isHidden = true
        }
        
        
    }
    
    func showError() {
        let alert = UIAlertController(title: "NetWorking Error", message:"There was an error, go back to the previous view" , preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    
    }
    
    
}
