//
//  PostChildData.swift
//  subreddit-posts-finder
//
//  Created by Jemimah Beryl M. Sai on 07/09/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import ObjectMapper

class PostChildData: Mappable {
    var subreddit: String?
    var title: String?
    var selfText: String?
    var createdUTC: Int?
    var preview: PostPreview?
    
    required init?(map: Map) {  }
    
    func mapping(map: Map) {
        subreddit <- map["subreddit_name_prefixed"]
        title <- map["title"]
        selfText <- map["selftext"]
        createdUTC <- map["created_utc"]
        preview <- map["preview"]
    }
}
