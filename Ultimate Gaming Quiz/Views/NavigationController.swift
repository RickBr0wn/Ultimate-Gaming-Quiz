//
//  NavigationViewController.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 09/04/2021.
//

import SwiftUI

enum CurrentGameState {
  case title, instructions, settings, game, gameOver
}

struct NavigationController: View {
  @EnvironmentObject var gameStateVM: GameState
  
  var body: some View {
    switch gameStateVM.currentGameState {
    case .title:
      return AnyView(TitleView())
    case .instructions:
      return AnyView(InstructionsView())
    case .settings:
      return AnyView(SettingsView())
    case .game:
      return AnyView(GameView())
    case .gameOver:
      return AnyView(GameOverView())
    }
  }
}

struct NavigationController_Previews: PreviewProvider {
  static var previews: some View {
    NavigationController()
  }
}
