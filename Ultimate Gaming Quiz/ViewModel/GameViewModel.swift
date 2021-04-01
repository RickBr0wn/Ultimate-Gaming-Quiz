//
//  ViewModel.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 21/02/2021.
//

import SwiftUI

class GameViewModel: ObservableObject {
  @Published var gameModel = GameModel()
  
  var score: Int {
    gameModel.score
  }
  
  var currentQuestionIndex: Int {
    gameModel.currentQuestionIndex
  }

  var currentQuestion: String {
    gameModel.allOfTheQuestions[gameModel.currentQuestionIndex].question
  }
  
  var allOfTheAnswers: [String] {
    gameModel.allOfTheQuestions[gameModel.currentQuestionIndex].answers
  }
  
  var correctAnswer: String {
    gameModel.allOfTheQuestions[gameModel.currentQuestionIndex].correctAnswer
  }
  
  var isGameOver: Bool {
    gameModel.isGameOver
  }
  
  func playerGuesses(answer: String) -> Void {
    gameModel.playerGuesses(answer: answer)
  }
  
  
  
}
