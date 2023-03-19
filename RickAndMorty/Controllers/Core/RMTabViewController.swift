//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Curtis Garrett on 3/9/23.
//

import UIKit

final class RMTabViewController: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red 
        setUpTabs()
    }
    
    private func setUpTabs (){
        //establish viewcontrollers
        let charactersVC = RMCharactersViewController()
        let episodesVC = RMEpisodesViewController()
        let locationsVC = RMLocationsViewController()
        let settingsVC = RMSettingsViewController()
        
        //make large size automatic
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        //establish navigationbars
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        //Make titles appear automatically and assign images
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person.fill"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        //Set title size to large
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
        
    }
}

