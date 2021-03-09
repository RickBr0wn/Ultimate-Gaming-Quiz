//
//  ViewModel.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 21/02/2021.
//

import SwiftUI

class GameViewModel: ObservableObject {
  @Published private var gameModel = GameModel()
  
  var score: Int {
    gameModel.score
  }
  
  var currentQuestion: String {
    gameModel.allOfTheQuestions[gameModel.currentQuestionIndex].question
  }
  
  var allOfTheAnswers: [String] {
    gameModel.allOfTheQuestions[gameModel.currentQuestionIndex].answers.shuffled()
  }
  
  var correctAnswer: String {
    gameModel.allOfTheQuestions[gameModel.currentQuestionIndex].correctAnswer
  }
  
  func playerGuesses(answer: String) -> Void {
    gameModel.playerGuesses(answer: answer)
  }
}
