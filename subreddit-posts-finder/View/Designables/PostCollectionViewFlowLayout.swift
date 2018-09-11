//
//  PostCollectionViewFlowLayout.swift
//  subreddit-posts-finder
//
//  Created by Jemimah Beryl M. Sai on 11/09/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import UIKit

class PostCollectionViewFlowLayout: UICollectionViewFlowLayout {
    override func prepare() {
        scrollDirection = .vertical
        collectionView?.decelerationRate = UIScrollViewDecelerationRateFast
        collectionView?.contentInset = UIEdgeInsetsMake(0.0, 0.0, 150.0, 0.0)
    }
}
