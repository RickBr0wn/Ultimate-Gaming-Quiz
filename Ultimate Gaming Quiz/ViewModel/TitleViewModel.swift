//
//  TitleViewModel.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 09/03/2021.
//

import Foundation

class TitleViewModel: ObservableObject {
  @Published private var gameStateVM = GameState()
  
  func moveToInstructionsView() {
    gameStateVM.currentGameState = .instructions
  }
}
