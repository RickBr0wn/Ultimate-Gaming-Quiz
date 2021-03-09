//
//  CodableBundleExtension.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 14/02/2021.
//

import Foundation

extension Bundle {
  func decode<T: Decodable>(_ file: String) -> [T] {
    guard let url = self.url(forResource: file, withExtension: ".json") else {
      fatalError("Failed to locate \(file) in the Bundle.")
    }
    
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(file) from the Bundle.")
    }
    
    let decoder = JSONDecoder()
    
    guard let loaded = try? decoder.decode([T].self, from: data) else {
      fatalError("Failed to decode \(file) from the Bundle.")
    }
    
    return loaded
  }
}
