//
//  GameView.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 09/03/2021.
//

import SwiftUI

struct GameView: View {
  @ObservedObject var gameVM = GameViewModel()
  
  @EnvironmentObject var gameStateVM: GameState
  
  var body: some View {
    if gameVM.isGameOver {
      gameStateVM.currentGameState = .gameOver
    }
    
    return VStack(alignment: .center) {
      HeaderView(score: gameVM.score, questionNumber: gameVM.currentQuestionIndex + 1)
      
      Spacer()
      
      QuestionView(question: gameVM.currentQuestion)
      
      Spacer()
      
      ForEach(gameVM.allOfTheAnswers, id: \.self) { answer in
        Button(action: {
          gameVM.playerGuesses(answer: answer)
        }, label: {
          AnswerView(answer: answer)
            .foregroundColor(.mainDarkColor)
        })
      }
      
      Spacer()
    }
    .padding(.top, 50)
  }
}

struct GameView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(GameState())
  }
}
