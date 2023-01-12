//
//  AnimVCViewController.swift
//  VK Client Oct
//
//  Created by Залялиева Эльмира on 30.11.2022.
//

import UIKit

class AnimVCViewController: UIViewController {

    
    @IBOutlet var viewAnimate: UIView!
    
    @IBOutlet var yCenter: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func tapToAnimate(_ sender: Any) {
    
        yCenter.isActive.toggle()
        UIView.animate(withDuration: 3){ self.view.layoutIfNeeded()
    }
    }
}
