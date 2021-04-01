//
//  AnswerView.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 11/03/2021.
//

import SwiftUI

struct AnswersListView: View {
  @ObservedObject var gameVM = GameViewModel()
  
  let arrayOfAnswers: [String]
  let fontName = Constants.fontName.rawValue
  
  var body: some View {
    VStack {
      ForEach(gameVM.allOfTheAnswers, id: \.self) { answer in
        Button(action: {
          gameVM.playerGuesses(answer: answer)
        }, label: {
          AnswerView(answer: answer)
        })
      }
    }
  }
}

struct AnswersListView_Previews: PreviewProvider {
  static let answers = ["Answer One", "Answer Two", "Answer Three", "Answer Four"]
  
  static var previews: some View {
    ZStack {
      Color.orange
      
      AnswersListView(arrayOfAnswers: answers)
    }
  }
}
