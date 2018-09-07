//
//  SubredditAPI.swift
//  subreddit-posts-finder
//
//  Created by Jemimah Beryl M. Sai on 07/09/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import Moya

// MARK: Enumeration

enum SubredditAPI {
    case getSubreddits
    case getPosts(url: String)
}

// MARK: TargetType Protocol Implementation

extension SubredditAPI: TargetType {
    var baseURL: URL {  return URL(string: "https://api.reddit.com")!  }
    
    var path: String {
        switch self {
        case .getSubreddits:
            return "/r/"
        case .getPosts(let url):
            return "\(url)"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getSubreddits, .getPosts:
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var headers: [String : String]? {
        return ["Content-type": "application/json"]
    }
    
    var task: Task {
        switch self {
        case .getSubreddits, .getPosts:
            return .requestPlain
        }
    }
}
