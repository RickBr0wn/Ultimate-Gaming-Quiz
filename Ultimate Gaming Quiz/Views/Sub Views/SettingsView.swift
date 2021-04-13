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
  
  let font = Constants.primaryFont.rawValue
  let size: CGFloat = 40
  
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
      
      Spacer()
      
      Image("settings_image")
        .resizable()
        .scaledToFit()
        .padding(.bottom, 40)
        .offset(x: 0, y: -50)
      
      VStack {
        VStack {
          StrokeText(text: "Number of Questions", width: 3, color: .black)
            .foregroundColor(.white)
            .font(.custom(font, size: 36))
          
          HStack {
            Button(action: {}) {
              Image("menu_backward")
                .resizable()
                .frame(width: size, height: size, alignment: .center)
            }
            
            Spacer()
            
            StrokeText(text: String(settings.numberOfQuestions.rawValue), width: 3, color: .black)
              .foregroundColor(.white)
              .font(.custom(font, size: 42))
            
            Spacer()
            
            Button(action: {}) {
              Image("menu_forward")
                .resizable()
                .frame(width: size, height: size, alignment: .center)
            }
          }
          .frame(width: 200)
        }
        // Background Music
        VStack {
          StrokeText(text: "Background Music", width: 3, color: .black)
            .foregroundColor(.white)
            .font(.custom(font, size: 36))
          
          HStack {
            Button(action: {
              settings.backgroundMusic.toggle()
            }) {
              Image("menu_backward")
                .resizable()
                .frame(width: size, height: size, alignment: .center)
            }
            
            Spacer()
            
            Image(settings.backgroundMusic ? "menu_on" : "menu_off")
              .resizable()
              .frame(width: size + 20, height: size, alignment: .center)
              .padding(.horizontal, 20)
            
            Spacer()
            
            Button(action: {
              settings.backgroundMusic.toggle()
            }) {
              Image("menu_forward")
                .resizable()
                .frame(width: size, height: size, alignment: .center)
            }
          }
          .frame(width: 200)
        }
        // Sound Effects
        VStack {
          StrokeText(text: "Sound Effects", width: 3, color: .black)
            .foregroundColor(.white)
            .font(.custom(font, size: 36))
          
          HStack {
            Button(action: {
              settings.soundEffects.toggle()
            }) {
              Image("menu_backward")
                .resizable()
                .frame(width: size, height: size, alignment: .center)
            }
            
            Spacer()
            
            Image(settings.soundEffects ? "menu_on" : "menu_off")
              .resizable()
              .frame(width: size + 20, height: size, alignment: .center)
              .padding(.horizontal, 20)
            
            Spacer()
            
            Button(action: {
              settings.soundEffects.toggle()
            }) {
              Image("menu_forward")
                .resizable()
                .frame(width: size, height: size, alignment: .center)
            }
          }
          .frame(width: 200)
        }
      }
      .offset(x: 0, y: -50)

      Spacer()
    }
    .padding(.vertical, 50)
    .padding(.horizontal, 20)
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
