//
//  TestClass.swift
//  KENetworking
//
//  Created by Karim Ebrahem on 5/20/18.
//  Copyright © 2018 Karim Ebrahem. All rights reserved.
//

import Foundation
import ObjectMapper
import Alamofire
import PromiseKit

public class APINetworking: APIRequestHandler {
    
    public static let shared = APINetworking()
    
    private init() {
        
    }
    
    public func callService<T: Mappable>(object: T.Type, requestURL: Alamofire.URLRequestConvertible) -> Promise<T> {
        return callServerWith(object, requestURL: requestURL)
    }
    
}
