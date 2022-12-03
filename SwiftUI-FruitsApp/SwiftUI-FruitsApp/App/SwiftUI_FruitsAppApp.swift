//
//  SwiftUI_FruitsAppApp.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 29/11/22.
//

import SwiftUI

@main
struct SwiftUI_FruitsAppApp: App {
    
    // @AppStorage property wrapper is a source of truth that allows you read data from and write it to UserDefaults. It has a value semantics. You can use @AppStorage to store any basic data type.
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
