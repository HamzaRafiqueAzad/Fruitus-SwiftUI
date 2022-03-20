//
//  FruitusApp.swift
//  Fruitus
//
//  Created by Hamza Rafique Azad on 20/3/22.
//

import SwiftUI

@main
struct FruitusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
