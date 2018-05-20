//
//  DataRouter.swift
//  KENetworking_Example
//
//  Created by Graphic on 5/20/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import Alamofire

enum DataRouter: URLRequestConvertible {
    
    static let baseURLString = "https://jsonplaceholder.typicode.com/"
    
    // Profile
    case getFirstPost()
    
    func asURLRequest() throws -> URLRequest {
        let url: URL = {
            // build up and return the URL for each endpoint
            let relativePath: String?
            switch self {
            case .getFirstPost:
                relativePath = "posts/1"
            }
            var url = URL(string: DataRouter.baseURLString)!
            if let relativePath = relativePath {
                url = url.appendingPathComponent(relativePath)
            }
            return url
        }()
        
        var method: HTTPMethod {
            switch self {
            case .getFirstPost:
                return .get
            }
        }
        
        let params: ([String: Any]?) = {
            switch self {
            case .getFirstPost:
                return nil
            }
        }()
        
        var urlRequest = URLRequest(url: url)
        
        // For adding header to URLRequest
//        switch self {
//        case .getAllPosts:
//            urlRequest.addValue("", forHTTPHeaderField: "")
//        }
        
        urlRequest.httpMethod = method.rawValue
        
        let encoding = JSONEncoding.default
        return try encoding.encode(urlRequest, with: params)
    }
}
