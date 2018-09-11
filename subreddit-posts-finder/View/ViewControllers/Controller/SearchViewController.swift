//
//  SearchViewController.swift
//  subreddit-posts-finder
//
//  Created by Jemimah Beryl M. Sai on 11/09/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    // MARK: Variables - Properties
    
    var selectedSubreddit = ""
    
    // MARK: Outlets
    
    @IBOutlet weak var searchTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var loadingView: UIStackView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    // MARK: View lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSearchTableView()
    }
    
    // MARK: Setups
    
    func setupSearchTableView() {
        searchTableView.delegate = self
        searchTableView.dataSource = self
        searchBar.delegate = self
        searchTableView.register(UINib.init(nibName: "SearchCell", bundle: nil), forCellReuseIdentifier: "SearchCell")
        tableViewWasTapped()
    }
    
    // MARK: Actions
    
    func tableViewWasTapped() {
        let tapUIView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: view.frame.width, height: searchTableView.frame.height))
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissModalView))
        tapUIView.addGestureRecognizer(tapGesture)
        searchTableView.tableFooterView = tapUIView
    }
    
    // MARK: Selectors
    
    @objc func dismissModalView() {
        view.endEditing(true)
        dismiss(animated: true, completion: nil)
    }
}

// MARK: UITableViewDelegate

extension SearchViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88
    }
}

// MARK: UITableViewDataSource

extension SearchViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell") as? SearchCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}

// MARK: UISearchBarDelegate

extension SearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        selectedSubreddit = searchText
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        dismissModalView()
    }
}
