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
        

    
    }

}
