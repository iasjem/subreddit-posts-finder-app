//
//  SubredditService.swift
//  subreddit-posts-finder
//
//  Created by Jemimah Beryl M. Sai on 07/09/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import Foundation
import Moya
import ObjectMapper

class SubredditService {
    
    // MARK: Initializers
    
    static let instance = SubredditService()
    var searchDisplay = [SearchDisplay]()
    var subscribeDisplay = [SubscribeDisplay]()
    private let provider = MoyaProvider<SubredditAPI>()
    
    // MARK: Getters
    
    func retrieveData(completion: @escaping (_ isComplete: Bool) -> ()) {
        provider.request(.getSubreddits) { [weak self] (result) in
            switch result {
            case .success(let response):
                do {
                    guard let jsonData = try response.mapJSON() as? [String: Any] else { return }
                    guard let strongSelf = self else { return }
                    strongSelf.setData(from: jsonData)
                    print("Successfully loaded data : \n\(jsonData)")
                } catch {  }
                completion(true)
            case .failure(let error):
                print("Failed to load data : \(error.localizedDescription)")
                completion(false)
            }
        }
    }
    
    // MARK: Setters
    
}
