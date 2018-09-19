//
//  PostModel.swift
//  Dependency Injection Explained
//
//  Created by Muhammad Yusuf Rosman on 19/09/2018.
//  Copyright © 2018 Kyle Lee. All rights reserved.
//

import Foundation
import ObjectMapper

struct PostModel {
    var id = 0
    var title = ""
    var imageUrl = ""
    var thumbImageUrl = ""
}

extension PostModel: Mappable {
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        id       <- map["id"]
        title     <- map["title"]
        imageUrl     <- map["url"]
        thumbImageUrl     <- map["thumbUrl"]
    }
    
}
