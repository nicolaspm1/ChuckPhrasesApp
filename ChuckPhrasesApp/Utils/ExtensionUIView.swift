//
//  ExtensionUIView.swift
//  ChuckPhrasesApp
//
//  Created by Pablo Manzur on 20/06/2022.
//

import Foundation
import UIKit

extension UIView {
    
    func setUp() {
        
        self.layer.cornerRadius = self.layer.bounds.width / 4
        self.clipsToBounds = true
        self.layer.borderWidth = 2
        self.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        
    }
}
