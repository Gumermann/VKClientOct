//
//  AvatarUiView.swift
//  VK Client Oct
//
//  Created by Залялиева Эльмира on 25.11.2022.
//

import UIKit

class AvatarUiView: UIView {

    @IBOutlet var avatarImageView: UIImageView!
    @IBOutlet var shadowView: UIView!
     
    var shadowColor = UIColor.black
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        shadowView.layer.shadowColor = shadowColor.cgColor
        shadowView.layer.shadowOffset = .zero
        shadowView.layer.shadowRadius = 8
        shadowView.layer.shadowOpacity = 0.7
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        avatarImageView.layer.cornerRadius = bounds.width/2
        shadowView.layer.cornerRadius = bounds.width/2
        
    }
    
}
