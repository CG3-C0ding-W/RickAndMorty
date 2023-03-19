//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Curtis Garrett on 3/18/23.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get epsiode info
    case episode
}
