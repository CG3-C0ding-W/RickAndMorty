//
//  RMCharacterDetailView.swift
//  RickAndMorty
//
//  Created by Curtis Garrett on 3/29/23.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
