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
    
    private func setData(from jsonData: [String: Any]) {
        guard let subreddit = Mapper<Subreddit>().map(JSON: jsonData) else { return }
        for x in 0..<8 {
            guard let displayName = subreddit.data?.children![x].data?.displayName else { return }
            guard let namePrefixed = subreddit.data?.children![x].data?.namePrefixed else { return }
            guard let icon = subreddit.data?.children![x].data?.icon else { return }
            guard let header = subreddit.data?.children![x].data?.header else { return }
            guard let subscribers = subreddit.data?.children![x].data?.subscribers else { return }
            guard let url = subreddit.data?.children![x].data?.url else { return }
            searchDisplay.append(SearchDisplay(displayName: displayName, namePrefixed: namePrefixed, icon: URL(string: icon), url: URL(string: url)!))
            subscribeDisplay.append(SubscribeDisplay(displayName: displayName, namePrefixed: namePrefixed, icon: URL(string: icon), header: URL(string: header), subscribers: String(subscribers)))
        }
    }
}
