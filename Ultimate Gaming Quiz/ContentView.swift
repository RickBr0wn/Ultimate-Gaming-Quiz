//
//  ContentView.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 13/02/2021.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var gameVM = GameViewModel()
  
  var body: some View {
    VStack {
      Text("score: \(gameVM.score)")
        .padding()
      
      Text("\(gameVM.currentQuestion)")
      
      ForEach(gameVM.allOfTheAnswers, id: \.self) { answer in
        Button(action: {
          gameVM.playerGuesses(answer: answer)
        }, label: {
          Text("\(answer)")
            .padding()
        })
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
