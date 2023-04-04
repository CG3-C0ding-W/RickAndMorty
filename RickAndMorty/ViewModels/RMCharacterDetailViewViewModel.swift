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
    
    public var title: String {
        character.name.uppercased()
    }
}
