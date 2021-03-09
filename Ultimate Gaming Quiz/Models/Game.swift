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
  
  var currentGameState: CurrentGameState = .title
  
  var currentQuestionIndex: Int = 0
  
  var numberOfQuestionsToBeAsked: Int = 5
  
  init() {
    allOfTheQuestions = Bundle.main.decode("questions")
    allOfTheQuestions = allOfTheQuestions.shuffled()
  }
  
  mutating func incrementTheScore() {
    score += 1
  }
  
  mutating func incrementTheQuestionIndex() {
    currentQuestionIndex += 1
  }
  
  mutating func resetScore() {
    score = 0
  }
  
  mutating func resetTheQuestionIndex() {
    currentQuestionIndex = 0
  }
  
  mutating func startGame() -> Void {
    print("start game")
    currentGameState = .game
  }
  
  mutating func gameOver() {
    print("game over")
    currentGameState = .gameOver
  }
  
  mutating func playerGuesses(answer: String) {
    if answer == self.allOfTheQuestions[self.currentQuestionIndex].correctAnswer {
      incrementTheScore()
      if currentQuestionIndex <= numberOfQuestionsToBeAsked {
        incrementTheQuestionIndex()
      } else {
        currentGameState = .gameOver
        print("game over")
      }
    } else {
      if currentQuestionIndex <= numberOfQuestionsToBeAsked {
        incrementTheQuestionIndex()
      } else {
        currentGameState = .gameOver
        print("game over")
      }
    }
  }
  
}

enum CurrentGameState {
  case title, instructions, game, gameOver
}
