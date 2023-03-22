//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Curtis Garrett on 3/18/23.
//

import Foundation

enum RMCharacterGender: String, Codable{
    //Female, Male, genderless, unknown
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case`unknown` = "unknown"
}
