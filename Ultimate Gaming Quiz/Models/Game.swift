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
  
  var gameState = GameState.shared
  
  var currentQuestionIndex: Int = 0
  
  var isGameOver: Bool = false
  
  init() {
    allOfTheQuestions = Bundle.main.decode("questions").shuffled()
  }
  
  mutating func incrementTheScore() -> Void {
    self.score += 1
  }
  
  mutating func incrementTheQuestionIndex() -> Void {
    self.currentQuestionIndex += 1
  }
  
  mutating func resetTheScore() -> Void {
    self.score = 0
  }
  
  mutating func resetTheQuestionIndex() -> Void {
    self.currentQuestionIndex = 0
  }
  
  mutating func startGame() -> Void {
    self.allOfTheQuestions.shuffle()
    self.resetTheScore()
    self.resetTheQuestionIndex()
    self.isGameOver = false
  }
  
  mutating func gameOver() -> Void {
    self.isGameOver = true
  }
  
  mutating func playerGuesses(answer: String, numberOfQuestions: Int) -> Void {
    if answer == self.allOfTheQuestions[self.currentQuestionIndex].correctAnswer {
      self.incrementTheScore()
    } else {
      // Implement a correct/incorrect system
    }
    if numberOfQuestions == self.currentQuestionIndex + 1 {
      gameOver()
      gameState.currentGameState = .gameOver
    }
    self.incrementTheQuestionIndex()
  }
  
}

