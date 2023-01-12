//
//  FriendCollectionViewCell.swift
//  VK Client Oct
//
//  Created by Залялиева Эльмира on 24.10.2022.
//

import UIKit

class FriendCollectionViewCell: UICollectionViewCell {
    @IBOutlet var imageAvatarView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var likeControl: LikeControl!
    @IBOutlet var containerView: UIView!
    
    override  func awakeFromNib() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        
        tap.numberOfTapsRequired = 2
        containerView.addGestureRecognizer(tap)
    }
    
    @objc func handleTap(_: UITapGestureRecognizer) {
        likeControl.isLiked.toggle()
        
        if likeControl.isLiked {
            likeControl.likePicture.image = UIImage(systemName: "suit.heart.fill")} else {
                likeControl.likePicture.image = nil
            }
    }
}
