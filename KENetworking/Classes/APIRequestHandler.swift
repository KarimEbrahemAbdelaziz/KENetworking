//
//  APIManager.swift
//  KENetworking Framework
//
//  Created by Karim Ebrahem on 5/20/18.
//  Copyright © 2018 Karim Ebrahem. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import PromiseKit

/// API protocol, The alamofire wrapper
protocol APIRequestHandler {
    
    /// Calling network layer via (Alamofire), this implementation can be replaced anytime in one place which is the protocol itsel, applied everywhere.
    ///
    /// - Parameters:
    ///   - decoder: Codable confirmed class/struct, Model.type.
    ///   - requestURL: Server request.
    ///   - completion: Results of the request, general errors cases handled.
    /// - Returns: Void.
    func callServerWith<T: Mappable>(_ decoder: T.Type, requestURL: Alamofire.URLRequestConvertible) -> Promise<T>
}

extension APIRequestHandler  {

    func callServerWith<T: Mappable>(_ decoder: T.Type, requestURL: Alamofire.URLRequestConvertible) -> Promise<T> {
        
        return Alamofire.request(requestURL).responseObject()
        
    }
    
}








