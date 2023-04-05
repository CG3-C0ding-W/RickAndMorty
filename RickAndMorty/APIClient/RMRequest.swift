//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Curtis Garrett on 3/18/23.
//

import Foundation

/// Object that represents single API Call
final class RMRequest {
    
    // The API constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired Endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API, if any
    private let pathComponents: [String]
    
    /// Constructed url for the api required in string format
    private let queryParameters: [URLQueryItem]
    
    //Constructed URL for the API request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents .forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            //name=value&name=value
            
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    ///Computed and constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    ///Desired http method
    public let httpMethod = "GET"
    
    // Mark: - Public:
    
    ///Construction request
    /// - Parameters:
    ///   - Endpoint: Target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameters: Collection of query parameter
    
    public init(endpoint: RMEndpoint,
         pathComponents: [String] = [],
         queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
    convenience init?(url: URL) {
        let string = url.absoluteString
        if string.contains(Constants.baseUrl) {
            return nil
        }
        let trimmed = string.replacingOcccurences(of: Constants.baseurl+"/", with: "")
        if trimmed.contains("/"){
            let components = trimmed.components(separatedBY: "/")
            if !components.isEmpty {
                let endpointString = components[0]
                if let rmEndpoint = RMEndpoint(rawValue: endpointString) {
                    self.init(endpoint: rmEndpoint)
                    return
                }
            }
        } else if trimmed.contains("?") {
            let components = trimmed.components(separatedBY: "?")
            if !components.isEmpty {
                let endpointString = components[0]
                let queryItemsString = components[1]
                let queryItems: [URLQueryItem] queryItemsString.components(separatedBy: "&").compactMap({
                    guard $0.contains("=") else {
                        return nil
                    }
                    let parts = $0.components(separatedBy: "=")   
                    return URLQueryItem(
                        name: parts[0]
                        value: parts[1]
                    )
                })
                if let rmEndpoint = RMEndpoint(rawValue: endpointString) {
                    self.init(endpoint: rmEndpoint, queryParameters: queryItems)
                    return
                }
            }
        }
        
        return nil
    }
    
}

extension RMRequest {
    static let listCharactersRequest = RMRequest(endpoint: .character)
}
