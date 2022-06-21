//
//  RandomPhraseViewController.swift
//  ChuckPhrasesApp
//
//  Created by Pablo Manzur on 20/06/2022.
//

import UIKit

class RandomPhraseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func buttonPressed(_ sender: Any) {
        let url = Constants().randomPhrase
        let phraseCategoryVC = CategoryPhraseViewController()
        phraseCategoryVC.categoryPhraseUrl = url
        
        self.navigationController?.pushViewController(phraseCategoryVC, animated: true)
    }
}


