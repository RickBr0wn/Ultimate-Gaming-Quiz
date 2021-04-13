//
//  HeaderView.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 11/03/2021.
//

import SwiftUI

struct HeaderView: View {
  let score: Int
  let questionNumber: Int
  let fontName = Constants.fontName.rawValue
  let numberOfQuestions = Settings.shared.numberOfQuestions
  
  var body: some View {
    ZStack {
      HStack {
        Text("score: \(score)")
          
        Spacer()
        
        Text("\(questionNumber)/\(numberOfQuestions)")
      }
      .padding()
      .font(.custom(fontName, size: 22))
      .foregroundColor(.mainDarkColor)
      .frame(width: 350, height: 50, alignment: .center)
      .background(Color.backgroundColor.opacity(0.4))
      
      Circle()
        .frame(width: 62, height: 62, alignment: .center)
      
      Circle()
        .fill(Color.backgroundColor.opacity(0.9))
        .frame(width: 50, height: 50, alignment: .center)
      
      Text("\(numberOfQuestions)")
        .font(.custom(fontName, size: 26))
        .fontWeight(.bold)
        .foregroundColor(.mainDarkColor)
    }
    .cornerRadius(25)
    .shadow(radius: 10)
  }
}

struct HeaderView_Previews: PreviewProvider {
  static var previews: some View {
    HeaderView(score: 5, questionNumber: 1)
      .previewLayout(.sizeThatFits)
  }
}
