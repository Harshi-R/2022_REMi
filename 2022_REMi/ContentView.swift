//
//  ContentView.swift
//  2022_REMi
//
//  Created by Harshitha Rebala on 10/22/22.
//

import SwiftUI


let xxx = Color(.sRGB, red: 36/255, green: 22/255, blue: 82/255)
let backgroundGradient = LinearGradient(
 gradient: Gradient(colors: [Color.purple, xxx]),
 startPoint: .top, endPoint: .bottom)

struct WelcomeView: View {
    
    var body: some View {
        ZStack {
            
            backgroundGradient
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                Spacer()
                    .frame(height: 130)
                    .clipped()
                Text("Welcome!")
                    .font(.system(size: 46, weight: .bold, design: .default))
                    .frame(alignment: .leading)
                    .clipped()
                    .padding(.leading, 20)
                    .foregroundColor(.white)
                Text("Choose your device")
                    .font(.title.weight(.bold))
                    .frame(alignment: .leading)
                    .clipped()
                    .padding(.leading, 20)
                    .foregroundColor(.white)
                Spacer()
                    .frame(height: 90)
                    .clipped()
                VStack(spacing: 10) {
                    Capsule(style: .continuous)
                        .foregroundColor(.white)
                        .frame(width: 220, height: 80)
                        .clipped()
                        .overlay {
                            HStack {
                                Image(systemName: "applewatch.watchface")
                                    .imageScale(.large)
                                Text("Apple Watch")
                                    .font(.headline.weight(.bold))
                            }
                        }
                        .padding()
                    Capsule(style: .continuous)
                        .foregroundColor(.white)
                        .frame(width: 220, height: 80)
                        .clipped()
                        .overlay {
                            HStack {
                                Image(systemName: "stopwatch")
                                    .imageScale(.large)
                                Text("Fitbit")
                                    .font(.headline.weight(.bold))
                            }
                        }
                    HStack(alignment: .firstTextBaseline) {
                        
                    }
                    .font(.body.weight(.medium))
                    .padding(.vertical, 16)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    //  .foregroundColor(Color(.displayP3, red: 244/255, green: 188/255, blue: 73/255))
                    .background {
                        Group {
                            
                        }
                    }
                    Spacer()
                        .frame(height: 140)
                        .clipped()
                    Text("Next")
                        .foregroundColor(.white)
                        .font(.headline.weight(.bold))
                        .frame(alignment: .center)
                        .clipped()
                        .padding()
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
            }
            .padding()
            //  .background {
            //     RoundedRectangle(cornerRadius: 10, style: .continuous)
            //        .fill(Color(.sRGB, red: 36/255, green: 22/255, blue: 82/255))
            //  }
        }
    }
}




struct WelcomeView_Previews: PreviewProvider {
 static var previews: some View {
 WelcomeView()
 }


    
 }


