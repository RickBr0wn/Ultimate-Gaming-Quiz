//
//  GameOverView.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 09/03/2021.
//

import SwiftUI

struct GameOverView: View {
  @ObservedObject var gameVM = GameViewModel.shared
  @EnvironmentObject var gameStateVM: GameState
  
  var body: some View {
    print(gameVM.score)
    return VStack {
      Text("Well done! You scored: \(gameVM.score)")
      
      Button("return to titles") {
        gameVM.gameOver()
        gameStateVM.currentGameState = .title
      }
    }
  }
}

struct GameOverView_Previews: PreviewProvider {
  static var previews: some View {
    GameOverView()
  }
}
