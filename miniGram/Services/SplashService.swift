//
//  SplashService.swift
//  miniGram
//
//  Created by Emran Ahmed on 6/5/23.
//

import Foundation

class SplashService {
    
    func getAppModel() -> SplashModel {
        return SplashModel(appName: MinigramApp.appName)
    }
}
