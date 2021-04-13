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
        
        Spacer()
        
        Image("title_image")
          .resizable()
          .aspectRatio(contentMode: .fit)

        
        Button(action: {
          gameVM.startGame()
          gameStateVM.currentGameState = .game
        }) {
          Image("title_button")
            .resizable()
            .aspectRatio(contentMode: .fit)
        }
        
        Spacer()
      }
      .padding(.vertical, 50)
      .padding(.horizontal, 20)
  }
}

struct TitleView_Previews: PreviewProvider {
  static var previews: some View {
    TitleView()
  }
}
