//
//  SplashViewModel.swift
//  miniGram
//
//  Created by Emran Ahmed on 6/5/23.
//

import Foundation

class SplashViewModel {
    
    func appName() -> String {
        let service = SplashService()
        return service.getAppModel().appName
    }
    
}
