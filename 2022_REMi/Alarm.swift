//
//  Alarm.swift
//  2022_REMi
//
//  Created by Harshitha Rebala on 10/23/22.
//

import SwiftUI
//let theme = (Color(.sRGB, red: 36/255, green: 22/255, blue: 82/255))

struct AlarmView: View {
    @State private var wakeUp = Date.now
    var body: some View {
        ZStack {
            theme
              .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center) {
                Spacer()
                    .frame(height: 0)
                    .clipped()
                Image(systemName: "alarm")
                    .imageScale(.medium)
                    .font(.system(size: 55, weight: .medium, design: .default))
                    .foregroundColor(.yellow)
                    .padding(.leading, 0)
                HStack {
                    VStack(alignment: .center) {
                        Text("Alarm")
                            .font(.system(size: 37, weight: .bold, design: .default))
                            .frame(alignment: .leading)
                            .clipped()
                            .padding(.top, 5)
                            .foregroundColor(.white)
                        Text("When is the latest you can wake up?")
                            .font(.system(size: 18, weight: .regular, design: .default))
                            .frame(alignment: .leading)
                            .clipped()
                            .padding(.leading, 20)
                            .padding(.top, 5)
                            .padding(.bottom, 25)
                            .foregroundColor(.white)
                        DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute).datePickerStyle(.wheel)
                            .labelsHidden()
                            .background(Color(.sRGB, red: 223/255, green: 197/255, blue: 254/255))
                            .padding(.bottom, -125)
                        
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
                    Text("Alarm will wake you up between")
                        .padding(.bottom, 8)
                        .foregroundColor(.white)
                        .font(.headline.weight(.semibold))
                    Text("\(wakeUp - 2700, style: .time) to \(wakeUp, style: .time)")
                        .font(.system(size: 25, weight: .bold, design: .default))
                        .foregroundColor(Color(.sRGB, red: 223/255, green: 197/255, blue: 254/255))
                        .padding(.bottom, 50)
                }
                Spacer()
                    .frame(width: 380, height: 10)
                    .clipped()
                Capsule(style: .continuous)
                    .frame(width: 330, height: 51)
                    .clipped()
                    .foregroundColor(Color(.sRGB, red: 55/255, green: 40/255, blue: 183/255))
                    .padding(.leading, 27)
                    .overlay {
                        HStack {
                            Text("Set Alarm")
                                .foregroundColor(.white)
                                .font(.body.weight(.semibold))
                                .padding(.horizontal, 7)
                                .padding(.leading, 12)
                            Image(systemName: "moon.fill")
                                .foregroundColor(.yellow)
                        }
                    }
                Spacer()
            }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(Color(.sRGB, red: 36/255, green: 22/255, blue: 82/255))
            }
        }
    }
    
}
        struct Alarm_Previews: PreviewProvider {
            static var previews: some View {
                AlarmView()
                
            }
        }
