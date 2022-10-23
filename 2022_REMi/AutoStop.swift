//
//  AutoStop.swift
//  2022_REMi
//
//  Created by Harshitha Rebala on 10/23/22.
//

import SwiftUI

struct AutoStopView: View {
        var body: some View {
            ZStack {
                theme
                  .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center) {
                    Spacer()
                        .frame(height: 0)
                        .clipped()
                    Image(systemName: "music.note")
                        .imageScale(.medium)
                        .font(.system(size: 55, weight: .medium, design: .default))
                        .foregroundColor(.yellow)
                        .padding(.leading, 0)
                    HStack {
                        VStack(alignment: .center) {
                            Text("Auto-Stop Audio")
                                .font(.system(size: 37, weight: .bold, design: .default))
                                .frame(alignment: .leading)
                                .clipped()
                                .padding(.top, 10)
                                .foregroundColor(.white)
                            Text("Entertainment that stops when you fall asleep")
                                .font(.system(size: 16, weight: .regular, design: .default))
                                .frame(alignment: .leading)
                                .clipped()
                                .padding(.leading, 20)
                               // .padding(.top, 5)
                                .padding(.bottom, 20)
                                .foregroundColor(.white)
                        }
                        
                    }
                    Spacer()
                        .frame(height: 80)
                        .clipped()
                    VStack {
                    //Add in alarm time chooser
                        Spacer()
                            .frame(height: 120)
                            .clipped()
                        Text("Connection to music apps coming soon!")
                            .padding(.bottom, 8)
                            .foregroundColor(.white)
                            .font(.headline.weight(.semibold))
                    }
                    
                    Spacer()
                        .frame(width: 380, height: 190)
                        .clipped()
                    Capsule(style: .continuous)
                        .frame(width: 330, height: 51)
                        .clipped()
                        .foregroundColor(Color(.sRGB, red: 55/255, green: 40/255, blue: 183/255))
                        .padding(.leading, 27)
                        .overlay {
                            HStack {
                                Text("Start")
                                    .foregroundColor(.white)
                                    .font(.body.weight(.semibold))
                                    .padding(.horizontal, 7)
                                    .padding(.leading, 12)
                                Image(systemName: "moon.fill")
                                    .foregroundColor(.yellow)
                            }
                        }
                    
                }
                .padding()
                ZStack{
                    Image("piano")
                        .resizable()
                        .frame(width: 260, height: 150)
                        .padding(.top, -100)
                        .opacity(100)
                
                    
                }

              
                .background {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color(.sRGB, red: 36/255, green: 22/255, blue: 82/255))
                }
            }
        }
        
    }
struct AutoStopView_Previews: PreviewProvider {
 static var previews: some View {
 AutoStopView()
 }

        } 
