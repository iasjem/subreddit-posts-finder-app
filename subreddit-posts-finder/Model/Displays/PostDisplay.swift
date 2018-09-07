//
//  PostDisplay.swift
//  subreddit-posts-finder
//
//  Created by Jemimah Beryl M. Sai on 07/09/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import Foundation

struct PostDisplay {
    private(set) var subreddit: String
    private(set) var title: String
    private(set) var selfText: String
    private(set) var createdUTC: String
    private(set) var imageSourceURL: URL?
    private(set) var imageSourceWidth: Int?
    private(set) var imageSourceHeight: Int?
    
    init(subreddit: String, title: String, selfText: String, createdUTC: String, imageSourceURL: URL?, imageSourceWidth: Int?, imageSourceHeight: Int?) {
        self.subreddit = subreddit
        self.title = title
        self.selfText = selfText
        self.createdUTC = createdUTC
        self.imageSourceURL = imageSourceURL
        self.imageSourceWidth = imageSourceWidth
        self.imageSourceHeight = imageSourceHeight
    }
}
