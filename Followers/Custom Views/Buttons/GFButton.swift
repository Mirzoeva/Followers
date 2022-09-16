//
//  GFButton.swift
//  Followers
//
//  Created by Ума Мирзоева on 29.11.2021.
//

import UIKit

class GFButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(backgroundColor: UIColor, title: String, buttonImage: UIImage) {
        self.init(frame: .zero)
        set(color: backgroundColor, title: title, buttonImage: buttonImage)
    }
    
    private func configure() {
        configuration = .tinted()
        configuration?.cornerStyle = .medium
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    final func set(color: UIColor, title: String, buttonImage: UIImage) {
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = color
        configuration?.title = title
        
        configuration?.image = buttonImage
        configuration?.imagePadding = 6
        configuration?.imagePlacement = .leading
    }
}
