//
//  InstructionsView.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 09/03/2021.
//

import SwiftUI

struct InstructionsView: View {
  @EnvironmentObject var gameStateVM: GameState
  
  var body: some View {
    VStack {
      Text("Instructions View")
      
      Button(action: {
        gameStateVM.currentGameState = .game
      }) {
        Text("GO TO GAME")
      }
      
      Button(action: {
        gameStateVM.currentGameState = .title
      }) {
        Text("GO TO TITLES")
      }
    }
  }
}

struct InstructionsView_Previews: PreviewProvider {
  static var previews: some View {
    InstructionsView()
  }
}
