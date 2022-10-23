//
//  SleepTips.swift
//  2022_REMi
//
//  Created by Harshitha Rebala on 10/23/22.
//

import SwiftUI

struct SleepTips: View {
    var body: some View {
        ZStack{
            theme
                .ignoresSafeArea()
            
            
            
            VStack(alignment: .leading) {
                Spacer()
                    .frame(height: 120)
                    .clipped()
                HStack {
                    Text("Sleep Inertia")
                        .foregroundColor(.white)
                        .font(.system(size: 40, weight: .bold, design: .default))
                        .padding(.leading, 30)
                    Image(systemName: "sleep.circle")
                        .imageScale(.large)
                        .foregroundColor(.white)
                        .padding()
                        .font(.system(size: 30, weight: .regular, design: .default))
                }
                .padding()
                Spacer()
                    .frame(width: 410, height: 10)
                    .clipped()
                Text("Sleep inertia refers to the feeling of tiredness and lack of dexterity and function immediately after waking.  ")
                    .padding(.leading, 46)
                    .foregroundColor(.white)
                    .font(.system(size: 21, weight: .medium, design: .default))
                    .padding(.trailing, 27)
                Text("Your body goes through cycles of deeper or lighter sleep throughout the night, and waking up during the deep stages of your sleep cycle can exaserbate the grogginess you feel in the morning.")
                    .padding(.leading, 46)
                    .foregroundColor(.white)
                    .font(.system(size: 21, weight: .medium, design: .default))
                    .padding(.trailing, 27)
                    .padding(.top)
                Text("REMi tracks your body’s REM cycles while you sleep and wakes you up after you finish one complete cycle, when sleep is lightest, so that you feel rested and energized and ready to face the day!")
                    .padding(.leading, 46)
                    .foregroundColor(.white)
                    .font(.system(size: 21, weight: .medium, design: .default))
                    .padding(.trailing, 27)
                    .padding(.top)
                Spacer()
                    .frame(height: 120)
                    .clipped()
            }
            .background {
                theme
               
            }
        }
    }
}

struct SleepTips_Previews: PreviewProvider {
    static var previews: some View {
        SleepTips()
    }
}


