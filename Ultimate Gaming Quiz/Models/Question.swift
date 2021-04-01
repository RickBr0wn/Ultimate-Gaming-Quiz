//
//  Question.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 14/02/2021.
//

import Foundation

struct Question: Codable, Identifiable, Equatable {
  let id: Int
  let question: String
  var answers: [String]
  let correctAnswer: String

  private enum CodingKeys: String, CodingKey {
    case id, question, answers
    case correctAnswer = "correct_answer"
  }
}
