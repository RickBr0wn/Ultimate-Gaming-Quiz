//
//  QuestionView.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 11/03/2021.
//

import SwiftUI

struct QuestionView: View {
  let question: String
  let fontName = Constants.primaryFont.rawValue
  
  var body: some View {
      ZStack {
        Color.backgroundColor
        
        Text(question)
          .font(.custom(fontName, size: 34))
          .multilineTextAlignment(.center)
          .foregroundColor(.mainDarkColor)
          .padding()
      }
      .frame(width: 350, height: 300, alignment: .center)
      .cornerRadius(25)
  }
}

struct QuestionView_Previews: PreviewProvider {  
  static var previews: some View {
      QuestionView(question: "Swift/ContiguousArrayBuffer.swift, line 444")
        .previewLayout(.sizeThatFits)
  }
}
