//
//  UITabBarViewController.swift
//  ChuckPhrasesApp
//
//  Created by Pablo Manzur on 20/06/2022.
//

import UIKit

class UITabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .red
        setTabItems()
    }
    
    private func setTabItems() {
        let firstTabTitle = "By category"
        let secondTabTitle = "Random"
        
        let firstTabImage = UIImage(systemName: "list.bullet")
        let secondTabImage = UIImage(systemName: "shuffle")
        
        
        let firstViewController = MainViewController()
        let secondViewController = RandomPhraseViewController()
        
        let navigationController = UINavigationController(rootViewController: firstViewController)
        
        navigationController.tabBarItem.title = firstTabTitle
        navigationController.tabBarItem.image = firstTabImage
        
        
        let navigationController2 = UINavigationController(rootViewController: secondViewController)
        
        navigationController2.tabBarItem.title = secondTabTitle
        navigationController2.tabBarItem.image = secondTabImage
        
        viewControllers = [navigationController, navigationController2]
        
    }

}
