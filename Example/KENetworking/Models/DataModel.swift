//
//  DataModel.swift
//  KENetworking_Example
//
//  Created by Graphic on 5/20/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import ObjectMapper

open class DataModel: Mappable {
    
    public var userId: Int?
    public var id: Int?
    public var title: String?
    public var body: String?
    
    required public init?(map: Map) {
        
    }
    
    // Mappable
    public func mapping(map: Map) {
        userId        <- map["userId"]
        id        <- map["id"]
        title        <- map["title"]
        body        <- map["body"]
    }
}
