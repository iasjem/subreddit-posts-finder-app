//
//  SubscribeDisplay.swift
//  subreddit-posts-finder
//
//  Created by Jemimah Beryl M. Sai on 07/09/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import Foundation

struct SubscribeDisplay {
    private(set) var displayName: String
    private(set) var namePrefixed: String
    private(set) var icon: URL?
    private(set) var header: URL?
    private(set) var subscribers: String
    
    init(displayName: String, namePrefixed: String, icon: URL?, header: URL?, subscribers: String) {
        self.displayName = displayName
        self.namePrefixed = namePrefixed
        self.icon = icon
        self.header = header
        self.subscribers = subscribers
    }
}
