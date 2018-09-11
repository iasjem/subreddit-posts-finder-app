//
//  PostCollectionViewFlowLayout.swift
//  subreddit-posts-finder
//
//  Created by Jemimah Beryl M. Sai on 11/09/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import UIKit

class PostCollectionViewFlowLayout: UICollectionViewFlowLayout {

    // MARK: Properties
    
    let itemHeight: CGFloat = 300
    
    var itemWidth: CGFloat {
        return collectionView!.frame.width
    }
    
    override var itemSize: CGSize {
        set {
            self.itemSize = CGSize(width: itemWidth, height: itemHeight)
        }
        get {
            return CGSize(width: itemWidth, height: itemHeight)
        }
    }
    
    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint {
        return collectionView!.contentOffset
    }
    
    // MARK: Initializers
    
    override init() {
        super.init()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }
    
    // MARK: Setups
    
    func setupLayout() {
        sectionInset = UIEdgeInsetsMake(15, 0, 100, 0)
        minimumInteritemSpacing = 0
        minimumLineSpacing = 15
        scrollDirection = .vertical
    }
}
