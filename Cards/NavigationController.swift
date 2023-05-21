//
//  NavigationController.swift
//  Cards
//
//  Created by Eliezer Sant Ana on 21/05/23.
//

import UIKit

final class NavigationController: UINavigationController {
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - UI
    func setupUI() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.backgroundColor = UIColor.Navigation.background
        appearance.shadowColor = .clear
        
        navigationBar.standardAppearance = appearance
        navigationBar.scrollEdgeAppearance = navigationBar.standardAppearance
        
        navigationBar.shadowImage = UIImage()
        navigationBar.barTintColor = UIColor.Navigation.background
        navigationBar.isTranslucent = false
    }
}
