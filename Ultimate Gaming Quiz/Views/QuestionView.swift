//
//  QuestionView.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 14/02/2021.


import SwiftUI

struct QuestionView: View {
  var question: String
  
  var body: some View {
    VStack {
      Text(question)
        .font(.title3)
        .fontWeight(.semibold)
    }
    .padding(60)
    .frame(width: 340)
    .multilineTextAlignment(.center)
    .background(Color.white)
    .cornerRadius(50)
    .shadow(radius: 10)
  }
}

struct QuestionView_Previews: PreviewProvider {
  static var question = "This is a test question, This is a test question.. This is a test question"
  
  static var answers = ["One Answer", "Two Answers", "Three Answers", "Four Answers"]
  
  static var previews: some View {
    QuestionView(question: question)
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
