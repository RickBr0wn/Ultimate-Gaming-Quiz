//
//  TitleView.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 09/03/2021.
//

import SwiftUI

struct TitleView: View {
  @EnvironmentObject var gameStateVM: GameState
  @ObservedObject var gameVM = GameViewModel.shared
  
  var body: some View {
      VStack {
        HStack {
          Button(action: {
            gameStateVM.currentGameState = .settings
          }) {
            Image("title_settings")
              .resizable()
              .frame(width: 40, height: 40, alignment: .leading)
          }
          
          Spacer()
          
          Button(action: {
            gameStateVM.currentGameState = .instructions
          }) {
            Image("title_information")
              .resizable()
              .frame(width: 40, height: 40, alignment: .leading)
          }
        }
        .offset(x: 0, y: -74)
        
        Image("title_image")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .offset(x: 0, y: -20)
        
        Button(action: {
          gameVM.startGame()
          gameStateVM.currentGameState = .game
        }) {
          Image("title_button")
            .resizable()
            .aspectRatio(contentMode: .fit)
        }
        
      }
      .padding()
  }
}

struct TitleView_Previews: PreviewProvider {
  static var previews: some View {
    TitleView()
  }
}
