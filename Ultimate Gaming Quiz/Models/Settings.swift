//
//  Settings.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 11/04/2021.
//

import Foundation

class Settings {
  static let shared = Settings(numberOfQuestions: 3, soundEffects: true, backgroundMusic: true)
  
  var numberOfQuestions: Int
  var soundEffects: Bool
  var backgroundMusic: Bool
  
  init(numberOfQuestions: Int, soundEffects: Bool, backgroundMusic: Bool) {
    self.numberOfQuestions = numberOfQuestions
    self.soundEffects = soundEffects
    self.backgroundMusic = backgroundMusic
  }
}
