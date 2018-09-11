//
//  PostViewController.swift
//  subreddit-posts-finder
//
//  Created by Jemimah Beryl M. Sai on 07/09/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var postCollectionView: UICollectionView!
    @IBOutlet weak var loadingView: UIStackView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    // MARK: View lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPostCollectionView()
    }
    
    // MARK: Setups
    
    func setupPostCollectionView() {
        postCollectionView.delegate = self
        postCollectionView.dataSource = self
        postCollectionView.register(UINib.init(nibName: "SubscribeCell", bundle: nil), forCellWithReuseIdentifier: "SubscribeCell")
        postCollectionView.register(UINib.init(nibName: "WithWideImagePostCell", bundle: nil), forCellWithReuseIdentifier: "WithWideImagePostCell")
        postCollectionView.register(UINib.init(nibName: "TitleOnlyPostCell", bundle: nil), forCellWithReuseIdentifier: "TitleOnlyPostCell")
        postCollectionView.register(UINib.init(nibName: "WithTextPostCell", bundle: nil), forCellWithReuseIdentifier: "WithTextPostCell")
    }
}

// MARK: UICollectionViewDelegate

extension PostViewController: UICollectionViewDelegate {  }

// MARK: UICollectionViewDataSource

extension PostViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WithWideImagePostCell", for: indexPath) as? WithWideImagePostCell else {
            return UICollectionViewCell()
        }
        return cell
    }
}
