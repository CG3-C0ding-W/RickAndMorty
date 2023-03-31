//
//  RMCharacterDetailViewController.swift
//  RickAndMorty
//
//  Created by Curtis Garrett on 3/29/23.
//

import UIKit

/// Controller to show info about single character
class RMCharacterDetailViewController: UIViewController {

    init(viewModel: RMCharacterDetailViewViewModel) {
        super.init(nibName: nil,
                   bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
        
    // Mark:  - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .secondarySystemBackground
    }
    
}