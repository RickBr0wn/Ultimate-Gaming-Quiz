//
//  Settings.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 11/04/2021.
//

import Foundation

class Settings: ObservableObject {
  static let shared = Settings(numberOfQuestions: 3, soundEffects: true, backgroundMusic: true)
  
  enum QuestionAmounts: Int, CaseIterable {
    case five = 5
    case ten = 10
    case fifteen = 15
    case twenty = 20
    case twentyFive = 25
  }
  
  let allOfTheCases = QuestionAmounts.allCases
  
  @Published var numberOfQuestions: Int
  @Published var soundEffects: Bool
  @Published var backgroundMusic: Bool
  
  init(numberOfQuestions: Int, soundEffects: Bool, backgroundMusic: Bool) {
    self.numberOfQuestions = numberOfQuestions
    self.soundEffects = soundEffects
    self.backgroundMusic = backgroundMusic
  }
}
