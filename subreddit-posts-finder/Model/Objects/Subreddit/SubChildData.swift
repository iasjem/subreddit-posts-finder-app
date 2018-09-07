//
//  SubChildData.swift
//  subreddit-posts-finder
//
//  Created by Jemimah Beryl M. Sai on 07/09/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import ObjectMapper

class SubChildData: Mappable {
    var displayName: String?
    var namePrefixed: String?
    var icon: String?
    var header: String?
    var subscribers: Int?
    var url: String?
    
    required init?(map: Map) {  }
    
    func mapping(map: Map) {
        displayName <- map["display_name"]
        namePrefixed <- map["display_name_prefixed"]
        icon <- map["icon_img"]
        header <- map["header_img"]
        subscribers <- map["subscribers"]
        url <- map["url"]
    }
}
