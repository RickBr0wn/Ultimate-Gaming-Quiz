//
//  AnswerView.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 11/03/2021.
//

import SwiftUI

struct AnswerView: View {
  let answer: String
  let font = Constants.primaryFont.rawValue
  
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 25.0)
        .fill(Color.white)
        .frame(width: 300, height: 70, alignment: .center)
      
      Text(answer)
        .font(.custom(font, size: 30))
    }
    .shadow(radius: 10)
  }
}

struct AnswerView_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      Color.orange
      
      AnswerView(answer: "A Sample Answer")
    }
  }
}
