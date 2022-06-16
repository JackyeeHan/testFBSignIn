//
//  ViewController.swift
//  testFBSignIn
//
//  Created by 黃柏瀚 on 2022/6/16.
//

import UIKit
import FBSDKLoginKit
import Firebase

class ViewController: UIViewController, LoginButtonDelegate {
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        
        let token = AccessToken.current
                
                let credential = FacebookAuthProvider
                  .credential(withAccessToken: token!.tokenString)
                
                Auth.auth().signIn(with: credential) { result, error in
                    print("try signIn Firebase")
                    
                }
    }
    
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        do {
                    try Auth.auth().signOut()
                } catch {
                    print("Sign Out error:\(error.localizedDescription)")
                }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBLoginButton()
        
        loginButton.permissions = ["public_profile", "email"]
        loginButton.delegate = self
        loginButton.center = view.center
        view.addSubview(loginButton)
        
        if let token = AccessToken.current, !token.isExpired {
            
        }


}
}
