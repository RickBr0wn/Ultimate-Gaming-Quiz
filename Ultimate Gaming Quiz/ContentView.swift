//
//  ContentView.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 13/02/2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      Image("background")
        .resizable()
        .scaledToFill()
      
      NavigationController()
    }
    .edgesIgnoringSafeArea(.all)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(GameState())
  }
}
