//
//  SwiftUI_FruitsAppApp.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 29/11/22.
//

import SwiftUI

@main
struct SwiftUI_FruitsAppApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardView()
            } else {
                HomePageView()
            }
        }
    }
}
