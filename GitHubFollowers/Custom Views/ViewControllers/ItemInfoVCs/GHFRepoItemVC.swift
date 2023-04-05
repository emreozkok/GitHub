//
//  GHFRepoItemVC.swift
//  GitHubFollowers
//
//  Created by Emre ÖZKÖK on 31.03.2023.
//

import UIKit

class GHFRepoItemVC: GHFItemInfoVC{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems(){
        itemInfoOneView.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoTwoView.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
}
