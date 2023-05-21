//
//  TabBarViewController.swift
//  Cards
//
//  Created by Eliezer Sant Ana on 21/05/23.
//

import UIKit
import CardTabBar

final class TabBarController: CardTabBarController {
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
        setupUI()
    }

    // MARK: - UI
    private func setupUI() {
        tabBar.tintColor = .TabBar.title
        tabBar.backgroundColor = .background
        tabBar.barTintColor = .Navigation.background
        tabBar.indicatorColor = .TabBar.itemBackground
        
        UITabBar.appearance().tintColor = .clear
        UITabBar.appearance().unselectedItemTintColor = .clear
    }
    
    private func setupViewController() {
        viewControllers = [homeTab, bookTab, editTab]
    }

    // MARK: - TabItems
    lazy var homeTab: UIViewController = {
        let homeTabItem = UITabBarItem(title: "First", image: UIImage(named: "ic_home"), selectedImage: nil)
        let homeNavTab = NavigationController(rootViewController: FirstViewController())
        homeNavTab.tabBarItem = homeTabItem
        return homeNavTab
    }()

    lazy var bookTab: UIViewController = {
        let searchTabItem = UITabBarItem(title: "Second", image: UIImage(named: "ic_search"), selectedImage: nil)
        let navController = NavigationController(rootViewController: SecondViewController())
        navController.tabBarItem = searchTabItem
        return navController
    }()

    lazy var editTab: UIViewController = {
        let randomTabItem = UITabBarItem(title: "Third", image: UIImage(named: "ic_settings"), selectedImage: nil)
        let navController = NavigationController(rootViewController: ThirdViewController())
        navController.tabBarItem = randomTabItem
        return navController
    }()
}
