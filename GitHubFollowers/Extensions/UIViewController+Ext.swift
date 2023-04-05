//
//  UIViewController+Ext.swift
//  GitHubFollowers
//
//  Created by Emre ÖZKÖK on 2.03.2023.
//

import UIKit

extension UIViewController{
    
    func presentAlert(title: String, message: String, buttonTitle: String){
        DispatchQueue.main.async {
            let alertVC = GHFAlertVC(alertTitle: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
