//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Curtis Garrett on 3/13/23.
//

import UIKit

/// Controller to show and search for different characters 
private let reuseIdentifier = "Cell"

final class RMCharactersViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        //Create title
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            //pathComponents: ["1"])
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        print(request.url)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
        }
    }
}
