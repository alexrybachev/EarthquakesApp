//
//  QuakesProvider.swift
//  EarthquakesApp
//
//  Created by Aleksandr Rybachev on 08.03.2023.
//

import Foundation

@MainActor
class QuakesProvider: ObservableObject {
    
    @Published var quakes: [Quake] = []
    
    let client: QuakeClient
    
    init(client: QuakeClient = QuakeClient()) {
        self.client = client
    }
    
    func fetchQuakes() async throws {
        let latestQuakes = try await client.quakes
        self.quakes = latestQuakes
    }
    
    func deleteQuakes(atOffsets offsets: IndexSet) {
        quakes.remove(atOffsets: offsets)
    }
}
