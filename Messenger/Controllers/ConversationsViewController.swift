//
//  ViewController.swift
//  Messenger
//
//  Created by Jezeem on 18/11/23.
//

import UIKit
import FirebaseAuth

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Conversation"
        view.backgroundColor = .systemBlue
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        validateAuth()
    }
    
    private func validateAuth() {
        if  FirebaseAuth.Auth.auth().currentUser ==  nil {
            print(FirebaseAuth.Auth.auth().currentUser ?? "nouser")
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }
    
    
}

