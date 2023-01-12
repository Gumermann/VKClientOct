//
//  ViewController.swift
//  VK Client Oct
//
//

import UIKit

// Some code yoooo

class LoginViewController: UIViewController {

    @IBOutlet var loginInput: UITextField!
    @IBOutlet var passwordInput: UITextField!
    @IBOutlet var enterButton: UIButton!
    @IBOutlet var loginTitleView: UILabel!
    @IBOutlet var passwordTitleView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func animateTitlesAppearing() {
        let offset = view.bounds.width
        loginTitleView.transform = CGAffineTransform(translationX: -offset, y: 0)
        passwordTitleView.transform = CGAffineTransform(translationX: offset, y: 0)
            UIView.animate(withDuration: 1.5,
        delay: 1,
        options: .curveEaseOut,
        animations: {
        self.loginTitleView.transform = .identity
        self.passwordTitleView.transform = .identity
        },
        completion: nil)
        }
        
        animateTitlesAppearing()
    }

    @IBAction func enterButtonPressed(_ sender: Any) {
        
        guard let login = loginInput.text,
              let password = passwordInput.text,
              login == "",
              password == "" else {
            
                  let alert = UIAlertController(title: "ERROR", message: "Wrong login/password", preferredStyle: .alert)
                  
                  let okButton = UIAlertAction(title: "Try again", style: .default) { _ in
                      self.loginInput.text?.removeAll()
                      self.passwordInput.text = ""
                  }
                  
                  alert.addAction(okButton)
                  
                  present(alert, animated: true)
                  
                  return
        }
        
        performSegue(withIdentifier: "Login", sender: nil)
        
    }
    
}

