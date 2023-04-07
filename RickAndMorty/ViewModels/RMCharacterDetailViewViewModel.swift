//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Curtis Garrett on 4/3/23.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    private var requestUrl: URL? {
        return URL(string: character.url)
    }
    
    public var title: String {
        character.name.uppercased()
    }
    
    public func fetchCharacterData() {
        print(character.url)
        guard let url = requestUrl,
            request = RMRequest(url: url) else {
            print("Failed to create")
          return
        }
    }
}
