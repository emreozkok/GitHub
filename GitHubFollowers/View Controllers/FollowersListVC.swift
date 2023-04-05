//
//  FollowersListVC.swift
//  GitHubFollowers
//
//  Created by Emre ÖZKÖK on 2.03.2023.
//

import UIKit

class FollowersListVC: UIViewController {
    var username:String! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
