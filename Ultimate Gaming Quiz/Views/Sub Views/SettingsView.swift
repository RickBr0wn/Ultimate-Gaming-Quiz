//
//  SettingsView.swift
//  Ultimate Gaming Quiz
//
//  Created by Rick Brown on 01/04/2021.
//

import SwiftUI

struct SettingsView: View {
  @EnvironmentObject var gameStateVM: GameState
  @ObservedObject var settings = Settings.shared
  
  var body: some View {
    VStack {
      HStack {
        Button(action: {
          gameStateVM.currentGameState = .title
        }) {
          Image("menu_back_arrow")
            .resizable()
            .frame(width: 40, height: 40, alignment: .leading)
        }
        
        Spacer()
        
        Button(action: {
          gameStateVM.currentGameState = .instructions
        }) {
          Image("title_information")
            .resizable()
            .frame(width: 40, height: 40, alignment: .leading)
        }
      }
//      .offset(x: 0, y: -74)
      
      Spacer()
      
      Image("settings_image")
        .resizable()
        .aspectRatio(contentMode: .fit)
//        .offset(x: 0, y: -20)
      
      VStack(alignment: .center, spacing: 10, content: {
        Image("settings_question")
          .resizable()
          .frame(width: 350, height: 50, alignment: .center)
        
        HStack {
          Button(action: {
            self.settings.soundEffects.toggle()
          }, label: {
            Image("menu_backward")
              .resizable()
              .frame(width: 40, height: 40, alignment: .leading)
          })
          
          if self.settings.soundEffects {
            Image("menu_on")
              .resizable()
              .frame(width: 60, height: 60, alignment: .center)
          } else {
            Image("menu_off")
              .resizable()
              .frame(width: 60, height: 60, alignment: .center)
          }
          
          Button(action: {
            self.settings.soundEffects.toggle()
          }, label: {
            Image("menu_forward")
              .resizable()
              .frame(width: 40, height: 40, alignment: .leading)
          })
          
        }
        
        Image("settings_fx")
          .resizable()
          .frame(width: 350, height: 50, alignment: .center)
        
        HStack {
          Image("menu_backward")
            .resizable()
            .frame(width: 40, height: 40, alignment: .leading)
          
          Image("menu_on")
            .resizable()
            .frame(width: 60, height: 60, alignment: .center)
          
          Image("menu_forward")
            .resizable()
            .frame(width: 40, height: 40, alignment: .leading)
          
        }
        
        Image("settings_music")
          .resizable()
          .frame(width: 350, height: 50, alignment: .center)
        
        HStack {
          Image("menu_backward")
            .resizable()
            .frame(width: 40, height: 40, alignment: .leading)
          
          Image("menu_on")
            .resizable()
            .frame(width: 60, height: 60, alignment: .center)
          
          Image("menu_forward")
            .resizable()
            .frame(width: 40, height: 40, alignment: .leading)
          
        }
      })
      
    }
    .padding()
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
