//
//  GFDataLoadingVC.swift
//  Followers
//
//  Created by Ума Мирзоева on 15.09.2022.
//

import UIKit

class GFDataLoadingVC: UIViewController {
     var containerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showLoadingView() {
        containerView = UIView(frame: view.bounds)
        view.addSubview(containerView)
        containerView.backgroundColor = .systemBackground
        containerView.alpha = 0
        
        UIView.animate(withDuration: 0.25) { self.containerView.alpha = 0.8 }
        
        let activatyIndicator = UIActivityIndicatorView(style: .large)
        containerView.addSubview(activatyIndicator)
        
        activatyIndicator.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            activatyIndicator.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            activatyIndicator.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
        ])
        
        activatyIndicator.startAnimating()
    }
    
    func dismissLoadingView() {
        DispatchQueue.main.async {
            self.containerView.removeFromSuperview()
            self.containerView = nil
        }
    }

}
