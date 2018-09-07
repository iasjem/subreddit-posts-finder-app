//
//  PostService.swift
//  subreddit-posts-finder
//
//  Created by Jemimah Beryl M. Sai on 07/09/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import Foundation
import Moya
import ObjectMapper

class PostService {
    
    // MARK: Initializers
    
    static let instance = PostService()
    var postDisplay = [PostDisplay]()
    private let provider = MoyaProvider<SubredditAPI>()
    
    // MARK: Getters
    
    
    // MARK: Setters
    
}
