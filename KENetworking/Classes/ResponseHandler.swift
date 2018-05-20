//
//  ResponseHandler.swift
//  KENetworking Framework
//
//  Created by Karim Ebrahem on 5/20/18.
//  Copyright © 2018 Karim Ebrahem. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import PromiseKit

extension Alamofire.DataRequest {
    // Return a Promise for a Mappable
    func responseObject<T: Mappable>() -> Promise<T> {
        
        return Promise { resolver in
            responseJSON(queue: nil) { response in
                switch response.result {
                case .success(let value):
                    let model = T(JSON: value as! [String: Any])!
                    resolver.fulfill(model)
                case .failure(let error):
                    resolver.reject(error)
                }
            }
        }
    }

}
