//
//  PostPreview.swift
//  subreddit-posts-finder
//
//  Created by Jemimah Beryl M. Sai on 07/09/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import ObjectMapper

class PostPreview: Mappable {
    var images: [PostPreviewImages]?
    
    required init?(map: Map) {  }
    
    func mapping(map: Map) {
        images <- map["images"]
    }
}
