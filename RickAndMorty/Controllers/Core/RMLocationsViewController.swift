//
//  RMLocationViewController.swift
//  RickAndMorty
//
//  Created by Curtis Garrett on 3/13/23.
//

import UIKit

/// Controller to show and search for different locations
private let reuseIdentifier = "Cell"

final class RMLocationsViewController:UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Locations"
    }
}
