//
//  FollowersCollectionViewCell.swift
//  GitHubFollowers
//
//  Created by Emre ÖZKÖK on 6.03.2023.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    
    static let identifier = "FollowersCollectionViewCell"
    
    var avatarImage = GHFImageView(frame: .zero)
    var userNameLbl = GHFTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set (follower: Follower){
        userNameLbl.text = follower.login
        avatarImage.getImage(from: follower.avatarUrl)
    }
    
    private func configure(){
        
        addSubview(avatarImage)
        addSubview(userNameLbl)
        let padding: CGFloat = 10
        
        NSLayoutConstraint.activate([
            avatarImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            avatarImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            avatarImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            avatarImage.heightAnchor.constraint(equalTo: self.widthAnchor )
        ])

        NSLayoutConstraint.activate([
            userNameLbl.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 12),
            userNameLbl.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            userNameLbl.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            userNameLbl.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
}
