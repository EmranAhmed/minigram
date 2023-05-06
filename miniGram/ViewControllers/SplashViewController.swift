//
//  SplashViewController.swift
//  miniGram
//
//  Created by Emran Ahmed on 6/5/23.
//

import UIKit

class SplashViewController: UIViewController {
    
    
    @IBOutlet var appNameLabel: UILabel!
    
    let splashViewModel: SplashViewModel = SplashViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.appNameLabel.text = splashViewModel.appName()
        
        Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(setTimeOut), userInfo: nil, repeats: false)
    }
    
    
    @objc func setTimeOut() {
        self.redirectToLoginScreen()
    }
    
    
    
    func redirectToLoginScreen() {
        
        // Get Init LoginViewController by ID
        
        /*
         if let loginNavigationController = self.storyboard?.instantiateViewController(withIdentifier: MinigramApp.loginNavigationController) as? UINavigationController {
         
         if let currentWindow = UIApplication.shared.connectedScenes.first as? UIWindowScene {
         
         
         if let currentScene = currentWindow.delegate as? SceneDelegate {
         currentScene.window?.rootViewController = loginNavigationController
         }
         
         }
         */
        
        
        let loginNavigationController = self.storyboard?.instantiateViewController(withIdentifier: MinigramApp.loginNavigationController)
        
        let currentWindow = UIApplication.shared.connectedScenes.first
        
        if let currentScene = currentWindow?.delegate as? SceneDelegate {
            currentScene.window?.rootViewController = loginNavigationController
        }
    
            
            // self.present(loginNavigationController, animated: true)
            
        
    }

}
