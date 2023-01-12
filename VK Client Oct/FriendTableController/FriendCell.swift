//
//  TableViewCell.swift
//  VK Client Oct
//
//  Created by Залялиева Эльмира on 24.10.2022.
//

import UIKit

class FriendCell: UITableViewCell {

    @IBOutlet var imageAvatarFriend: UIImageView!
    @IBOutlet var nameFriend: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imageAvatarFriend.layer.cornerRadius = imageAvatarFriend.bounds.width / 2
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
