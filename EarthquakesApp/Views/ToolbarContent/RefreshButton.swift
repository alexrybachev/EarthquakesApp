//
//  RefreshButton.swift
//  EarthquakesApp
//
//  Created by Aleksandr Rybachev on 08.03.2023.
//

import SwiftUI

struct RefreshButton: View {
    var action: () -> Void = {}
    
    var body: some View {
        Button(action: action) {
            Label("Refresh", systemImage: "arrow.clockwise")
        }
    }
}

struct RefreshButton_Previews: PreviewProvider {
    static var previews: some View {
        RefreshButton()
            .previewLayout(.sizeThatFits)
    }
}

