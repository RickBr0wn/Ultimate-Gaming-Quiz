//
//  Ultimate_Gaming_QuizApp.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 13/02/2021.
//

import SwiftUI

@main
struct Ultimate_Gaming_QuizApp: App {
  var gameState = GameState.shared
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(gameState)
    }
  }
}
