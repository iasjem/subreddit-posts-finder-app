//
//  PostPreviewImagesSource.swift
//  subreddit-posts-finder
//
//  Created by Jemimah Beryl M. Sai on 07/09/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import ObjectMapper

class PostPreviewImagesSource: Mappable {
    var url: String?
    var width: Int?
    var height: Int?
    
    required init?(map: Map) {  }
    
    func mapping(map: Map) {
        url <- map["url"]
        width <- map["width"]
        height <- map["height"]
    }
}
