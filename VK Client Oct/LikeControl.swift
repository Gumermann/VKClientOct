//
//  LikeControl.swift
//  VK Client Oct
//
//  Created by Залялиева Эльмира on 25.11.2022.
//

import UIKit

class LikeControl: UIControl {

    @IBOutlet var likePicture: UIImageView!
    
    var isLiked: Bool = false
    
    override func awakeFromNib() {
        likePicture.backgroundColor = .clear
        likePicture.tintColor = .red
    }

}
