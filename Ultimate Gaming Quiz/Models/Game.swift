//
//  Game.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 22/02/2021.
//

import Foundation

struct GameModel {
  private(set) var allOfTheQuestions: Array<Question>
  
  var score: Int = 0
  
  var gameState = GameState()
  
  var currentQuestionIndex: Int = 0
  
  var numberOfQuestionsToBeAsked: Int = 5
  
  var isGameOver: Bool = false
  
  init() {
    allOfTheQuestions = Bundle.main.decode("questions").shuffled()
  }
  
  mutating func incrementTheScore() {
    self.score += 1
  }
  
  mutating func incrementTheQuestionIndex() {
    self.currentQuestionIndex += 1
  }
  
  mutating func resetScore() {
    self.score = 0
  }
  
  mutating func resetTheQuestionIndex() {
    self.currentQuestionIndex = 0
  }
  
  mutating func startGame() -> Void {}
  
  mutating func gameOver() {
    self.isGameOver = true
  }
  
  mutating func playerGuesses(answer: String) {
    if answer == self.allOfTheQuestions[self.currentQuestionIndex].correctAnswer {
      self.incrementTheScore()
    } else {
      // Implement a correct/incorrect system
    }
    self.incrementTheQuestionIndex()
  }
  
}

