//
//  CacheEntryObject.swift
//  EarthquakesApp
//
//  Created by Aleksandr Rybachev on 08.03.2023.
//

import Foundation

final class CacheEntryObject {
    let entry: CacheEntry
    
    init(entry: CacheEntry) {
        self.entry = entry
    }
}

enum CacheEntry {
    case inProgress(Task<QuakeLocation, Error>)
    case ready(QuakeLocation)
}
