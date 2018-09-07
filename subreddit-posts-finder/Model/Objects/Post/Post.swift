//
//  Post.swift
//  subreddit-posts-finder
//
//  Created by Jemimah Beryl M. Sai on 07/09/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import ObjectMapper

class Post: Mappable {
    var data: PostData?
    
    required init?(map: Map) {  }
    
    func mapping(map: Map) {
        data <- map["data"]
    }
}
