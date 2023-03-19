//
//  RMSettingsViewController.swift
//  RickAndMorty
//
//  Created by Curtis Garrett on 3/13/23.
//

import UIKit

private let reuseIdentifier = "Cell"

final class RMSettingsViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Settings"
    }
}
