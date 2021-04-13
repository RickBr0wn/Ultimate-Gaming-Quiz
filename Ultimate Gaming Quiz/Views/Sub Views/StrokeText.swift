//
//  StrokeText.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 13/04/2021.
//

import SwiftUI

struct StrokeText: View {
  let text: String
  let width: CGFloat
  let color: Color
  
  var body: some View {
    ZStack{
      ZStack{
        Text(text).offset(x:  width, y:  width)
        Text(text).offset(x: -width, y: -width)
        Text(text).offset(x: -width, y:  width)
        Text(text).offset(x:  width, y: -width)
      }
      .foregroundColor(color)
      Text(text)
    }
  }
}

struct StrokeText_Previews: PreviewProvider {
  static var previews: some View {
    StrokeText(text: "HEY", width: 1, color: .black)
      .foregroundColor(.white)
      .font(.custom(Constants.primaryFont.rawValue, size: 36))
  }
}
