//
//  EarthquakesAppApp.swift
//  EarthquakesApp
//
//  Created by Aleksandr Rybachev on 08.03.2023.
//

import SwiftUI

@main
struct EarthquakesAppApp: App {
    
    @StateObject var quakesProvider = QuakesProvider()
    
    var body: some Scene {
        WindowGroup {
            Quakes()
                .environmentObject(quakesProvider)
        }
    }
}
