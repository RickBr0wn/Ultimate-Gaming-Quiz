//
//  GameState.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 09/03/2021.
//

import Foundation

class GameState: ObservableObject {
  static let shared = GameState()
  
  @Published var currentGameState: CurrentGameState = .title

}
