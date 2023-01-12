//
//  FriendModel.swift
//  VK Client Oct
//
//  Created by Залялиева Эльмира on 24.10.2022.
//

import Foundation
import UIKit

struct Friend {
    
    let image: UIImage?
    let name: String
    
    let friends: [NewFriends]
}

struct NewFriends {
    
    let image: UIImage?
    let name: String
}


let newFriends = [

    NewFriends(image: UIImage(systemName: "person.fill")!, name: "Михаил"),
    NewFriends(image: UIImage(systemName: "person.fill")!, name: "Михаил"),
    NewFriends(image: UIImage(systemName: "person.fill")!, name: "Михаил"),
    NewFriends(image: UIImage(systemName: "person.fill")!, name: "Михаил"),
    NewFriends(image: UIImage(systemName: "person.fill")!, name: "Михаил"),
    NewFriends(image: UIImage(systemName: "person.fill")!, name: "Михаил"),
    NewFriends(image: UIImage(systemName: "person.fill")!, name: "Михаил"),
    NewFriends(image: UIImage(systemName: "person.fill")!, name: "Михаил"),
    NewFriends(image: UIImage(systemName: "person.fill")!, name: "Михаил"),
    NewFriends(image: UIImage(systemName: "person.fill")!, name: "Михаил")
]
