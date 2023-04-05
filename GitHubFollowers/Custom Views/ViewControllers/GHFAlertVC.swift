//
//  GHFAlertVC.swift
//  GitHubFollowers
//
//  Created by Emre ÖZKÖK on 2.03.2023.
//

import UIKit

class GHFAlertVC: UIViewController {
    
    let containerView = AlertView()
    let titleLabel = GHFTitleLabel(textAlignment: .center, fontSize: 25)
    let messageLabel = GHFBodyLabel(textAlignment: .center)
    let okButton = GHFButton(backgroundColor: .systemRed, title: "OK")
    
    var alertTitle: String?
    var message: String?
    var buttonTitle: String?
    var padding: CGFloat = 20
    
    init(alertTitle: String, message: String, buttonTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = alertTitle
        self.message = message
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
        containerViewConfigure()
        titleLabelConfigure()
        alertButtonConfigure()
        messageConfigure()
    }
    
    func containerViewConfigure(){
        view.addSubview(containerView)
        
        NSLayoutConstraint.activate([
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.widthAnchor.constraint(equalToConstant: 280),
            containerView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
    
    func titleLabelConfigure(){
        containerView.addSubview(titleLabel)
        titleLabel.text = alertTitle ?? "Something went wrong..."
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            titleLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    func alertButtonConfigure(){
        containerView.addSubview(okButton)
        okButton.setTitle(buttonTitle ?? "OK", for: .normal)
        okButton.addTarget(self, action: #selector(dismissAction), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            okButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -padding),
            okButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            okButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            okButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    func messageConfigure(){
        containerView.addSubview(messageLabel)
        messageLabel.text = message ?? ""
        messageLabel.numberOfLines = 4
        
        NSLayoutConstraint.activate([
            messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            messageLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            messageLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            titleLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    @objc func dismissAction (){
        dismiss(animated: true)
    }
}
