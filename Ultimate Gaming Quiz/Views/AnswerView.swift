//
//  Answer.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 14/02/2021.
//

import SwiftUI

struct AnswerView: View {
  let answer: String
  
  var body: some View {
    Text(answer)
      .font(.title3)
      .fontWeight(.semibold)
      .padding(.horizontal, 20)
      .padding(.vertical, 10)
      .frame(width: 240)
      .background(Color.white)
      .cornerRadius(500)
      .shadow(radius: 5)
  }
}

struct Answer_Previews: PreviewProvider {
  static var answer = "This is a dummy answer."
  
  static var previews: some View {
    AnswerView(answer: answer)
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
