//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Curtis Garrett on 3/18/23.
//

import Foundation

enum RMCharacterStatus: String, Codable{
    // 'Alive' dead, or unknown
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
    
    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}
