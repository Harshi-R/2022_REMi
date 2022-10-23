//
//  AutoStop.swift
//  2022_REMi
//
//  Created by Harshitha Rebala on 10/23/22.
//

import SwiftUI

struct StatsView: View {
    var body: some View {
        ZStack {
            theme
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                    .frame(height: 40)
                    .clipped()
                    .foregroundColor(.yellow)
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(.yellow)
                    .font(.system(size: 50, weight: .semibold, design: .default))
                    .padding(.bottom, 2)
                Text("Sleep Analytics")
                    .font(.system(size: 46, weight: .bold, design: .default))
                    .frame(alignment: .leading)
                    .clipped()
                    .padding(.leading, 20)
                    .foregroundColor(.white)
                Text("How did you sleep?")
                    .font(.title.weight(.light))
                    .frame(alignment: .leading)
                    .clipped()
                    .padding(.leading, 20)
                    .foregroundColor(.white)
                Spacer()
                    .frame(height: 50)
                    .clipped()
                HStack {
                    RoundedRectangle(cornerRadius: 50, style: .continuous)
                        .foregroundColor(.white)
                        .frame(width: 370, height: 60)
                        .clipped()
                        .cornerRadius(15)
                        .padding(.leading, 1)
                        .padding(.bottom, 10)
                        .overlay {
                            Text("Sunday, October 23 ")
                                .font(.system(size: 18, weight: .bold)).multilineTextAlignment(.center)
                                .padding(.bottom, 10)
                        }
                }
                
                VStack {
                    HStack {
                        RoundedRectangle(cornerRadius: 50, style: .continuous)
                            .foregroundColor(.white)
                            .frame(width: 180, height: 60)
                            .clipped()
                            .cornerRadius(15)
                            .padding(.leading, 5)
                            .padding(.bottom, 10)
                            .overlay {
                                Text("Smart Wake-Up Time: 7:42 AM")
                                    .font(.system(size: 13, weight: .bold)).multilineTextAlignment(.center)
                                    .padding(.leading, 15)
                                    .frame(width: 180)
                                    .padding(.bottom, 5)
                            }
                        RoundedRectangle(cornerRadius: 50, style: .continuous)
                            .foregroundColor(.white)
                            .frame(width: 180, height: 60)
                            .clipped()
                            .cornerRadius(15)
                            .padding(.bottom, 10)
                            .overlay {
                                Text("REM Cycles: 5").font(.system(size: 18, weight: .bold))
                                    .padding(.leading, 5)
                                    .frame(width: 180)
                                    .padding(.bottom, 9)
                            }
                    }
                    HStack {
                        RoundedRectangle(cornerRadius: 50, style: .continuous)
                            .foregroundColor(.white)
                            .frame(width: 180, height: 60)
                            .clipped()
                            .cornerRadius(15)
                            .padding(.leading, 5)
                            .overlay {
                                Text("Resting Heart Rate: 43").font(.system(size: 15, weight: .bold)).multilineTextAlignment(.center)
                                    .padding(.leading, 10)
                            }
                        RoundedRectangle(cornerRadius: 50, style: .continuous)
                            .foregroundColor(.white)
                            .frame(width: 180, height: 60)
                            .clipped()
                            .cornerRadius(15)
                            .overlay {
                                Text("Time Spent in REM Sleep: 2h 2min").font(.system(size: 13, weight:.bold)).multilineTextAlignment(.center)
                                    .padding(.leading, 10)
                            }
                    }
                    
                    ZStack{
                        Image("Image")
                            .resizable()
                            .frame(width: 350, height: 270)
                        
                    }
                    
                    
                    Spacer()
                        .frame(width: 390)
                        .clipped()
                }
            }
            .padding()
            
            .background {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(Color(.sRGB, red: 36/255, green: 22/255, blue: 82/255))
            }
        }
    }
}
            
            
            struct StatsView_Previews: PreviewProvider {
                static var previews: some View {
                    StatsView()
                }
                
            }
            
