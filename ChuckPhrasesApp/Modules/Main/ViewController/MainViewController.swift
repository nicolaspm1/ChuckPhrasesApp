//
//  MainViewController.swift
//  ChuckPhrasesApp
//
//  Created by Pablo Manzur on 05/06/2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var categoriesPicker: UIPickerView!
    
    private let categoriesService = CategoriesService()
    private var categoriesViewModel: CategoriesViewModel?
    
    private var valueSelected: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        self.categoriesViewModel = CategoriesViewModel(service: categoriesService, delegate: self)
        self.categoriesViewModel?.getCategories()
       
    }


    private func setUp() {
        categoriesPicker.delegate = self
        categoriesPicker.dataSource = self
        
    }
    
  
    @IBAction func buttonPressed(_ sender: Any) {
        let url = Constants().randonCategoryPhraseUrl
        let phraseCategoryVC = CategoryPhraseViewController()
        phraseCategoryVC.categoryPhraseUrl = "\(url)\(String(describing: valueSelected!))"
        
        self.navigationController?.pushViewController(phraseCategoryVC, animated: true)
    }
    
}

//MARK: - CategoriesDelegate
extension MainViewController: CategoriesDelegate {
    func toggleLoading() {
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
    }
    
    func reloadData() {
        DispatchQueue.main.async {
            self.categoriesPicker.reloadAllComponents()
            self.valueSelected = self.categoriesViewModel?.getCategoryAt(index: 0)
            self.activityIndicator.stopAnimating()
            self.activityIndicator.isHidden = true
            
        }
    }
    
    func showError() {
        let alert = UIAlertController(title: title, message: "NetWorking Error", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
}

//MARK: - UIPickerViewDataSource

extension MainViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        self.categoriesViewModel?.getCategoriesCount() ?? 4
    }
    
}



//MARK: - UIPickerViewDelegate

extension MainViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        self.categoriesViewModel?.getCategoryAt(index: row)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        pickerView.subviews[0].subviews[0].subviews[2].backgroundColor = .white
        valueSelected = self.categoriesViewModel?.getCategoryAt(index: row)
        
    }
    
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let data = self.categoriesViewModel?.getCategoryAt(index: row) ?? ""
        return NSAttributedString(string: data, attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
    }

    
}
