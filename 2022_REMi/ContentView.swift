//
//  ContentView.swift
//  2022_REMi
//
//  Created by Harshitha Rebala on 10/22/22.
//
import SwiftUI

let theme = (Color(.sRGB, red: 36/255, green: 22/255, blue: 82/255))


/*NAVIGATION: for every screen, add the following code around their dashboard names:
 NavigationLink(destination: AlarmView()) {
 Text("Set Alarm")
 .font(.headline.weight(.semibold))
 .padding(.trailing, 14)
 }.buttonStyle(PlainButtonStyle())
 
 */


struct WelcomeView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                theme
                    .ignoresSafeArea()
                VStack(alignment: .center) {
                    Image(systemName: "moon.circle")
                        .imageScale(.large)
                        .font(.system(size: 55, weight: .medium, design: .default))
                        .foregroundColor(.yellow)
                        .padding()
                    Spacer()
                        .frame(height: 0)
                        .clipped()
                    HStack {
                        VStack(alignment: .center) {
                            Text("Hello, Salma!")
                                .font(.system(size: 37, weight: .bold, design: .default))
                                .frame(alignment: .leading)
                                .clipped()
                                .padding(.leading, 20)
                                .foregroundColor(.white)
                            Text("Your Dashboard")
                                .font(.system(size: 21, weight: .regular, design: .default))
                                .frame(alignment: .leading)
                                .clipped()
                                .padding(.leading, 20)
                                .foregroundColor(.white)
                        }
                    }
                    Spacer()
                        .frame(height: 0)
                        .clipped()
                    HStack {
                        RoundedRectangle(cornerRadius: 10, style: .circular)
                            .frame(maxWidth: .infinity, maxHeight: 100)
                            .clipped()
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            .padding(.leading)
                            .padding(.trailing, 2)
                            .overlay {
                                HStack(alignment: .center) {
                                    Image(systemName: "alarm")
                                        .imageScale(.medium)
                                        .font(.system(size: 30, weight: .bold, design: .default))
                                        .padding(.bottom, 5)
                                    
                                    NavigationLink(destination: AlarmView()) {
                                        Text("Set Alarm")
                                            .font(.headline.weight(.semibold))
                                            .padding(.trailing, 14)
                                    }.buttonStyle(PlainButtonStyle())
                                }
                            }
                   
                            RoundedRectangle(cornerRadius: 10, style: .circular)
                                .frame(maxWidth: .infinity, maxHeight: 100)
                                .clipped()
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .padding(.trailing)
                                //.padding(.leading, 2)
                                .overlay {
                                    HStack(alignment: .center) {
                                        Image(systemName: "waveform.path.ecg")
                                            .imageScale(.medium)
                                            .font(.system(size: 30, weight: .bold, design: .default))
                                           // .padding(.bottom, 5)
                                        NavigationLink(destination: AlarmView()) {
                                            Text("Sleep")
                                                .font(.headline.weight(.semibold))
                                                .padding(.trailing, 14)
                                        }.buttonStyle(PlainButtonStyle())
                                    }
                                }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .clipped()
                    RoundedRectangle(cornerRadius: 10, style: .circular)
                        .frame(maxWidth: .infinity, maxHeight: 80)
                        .clipped()
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .padding(.trailing)
                    .padding(.top, -50)
                        .padding(.leading, 16)
                        .overlay {
                            
                            HStack {
                                
                                Image(systemName: "music.note")
                                    .padding(.top, -45)
                                    .imageScale(.large)
                                    .font(.system(size: 28, weight: .regular, design: .default))
                                NavigationLink(destination: AutoStopView()) {
                                    Text("Auto-Stop")
                                        .font(.headline.weight(.semibold))
                                        .padding(.trailing, 13)
                                    .padding(.top, -35)
                                }.buttonStyle(PlainButtonStyle())
                                    
                            }
                        }
                    Spacer()
                        .frame(height: 50)
                        .clipped()
                    Text("Sleep Stats")
                        .padding(.leading, 16)
                        .font(.system(size: 24, weight: .semibold, design: .default))
                        .foregroundColor(.white)
                    Spacer()
                        .frame(height: 20)
                        .clipped()
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "moon")
                                .imageScale(.large)
                                .foregroundColor(.yellow)
                            Text("Avg. Sleep Time:   7hrs 15min")
                                .foregroundColor(.white)
                                .font(.subheadline.weight(.semibold))
                        }
                        .padding(.leading, 15)
                        .padding(.bottom, 2)
                        HStack {
                            Image(systemName: "sun.max")
                                .imageScale(.large)
                                .foregroundColor(.yellow)
                            Text("Avg. Wakeup Time:   7:36 AM")
                                .foregroundColor(.white)
                                .font(.subheadline.weight(.semibold))
                        }
                        .padding(.leading, 15)
                        HStack {
                            Image(systemName: "bed.double")
                                .imageScale(.large)
                                .foregroundColor(.yellow)
                            Text("Avg. Time to Fall Asleep:   33 min")
                                .foregroundColor(.white)
                                .font(.subheadline.weight(.semibold))
                        }
                        .padding(.leading, 15)
                        .padding(.top, 2)
                        Spacer()
                            .frame(height: 80)
                            .clipped()
                        Capsule(style: .continuous)
                            .overlay {
                                NavigationLink(destination: SleepTips()) {
                                    Text("Learn More")
                                        .foregroundColor(.white)
                                        .font(.headline.weight(.bold))
                                }.buttonStyle(PlainButtonStyle())
                                
                            }
                            .foregroundColor(Color(.sRGB, red: 55/255, green: 40/255, blue: 183/255))
                            .frame(width: 310, height: 50)
                            .clipped()
                            .padding(.leading, 27)
                        Spacer()
                            .frame(height: 40)
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
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}



/*
 
 let theme = (Color(.sRGB, red: 36/255, green: 22/255, blue: 82/255))
 //let backgroundGradient = LinearGradient(
 //  gradient: Gradient(colors: [Color.purple, xxx]),
 //   startPoint: .top, endPoint: .bottom)
 
 
 struct WelcomeView: View {
 @StateObject
 var healthContainer = HealthStoreContainer()
 var body: some View {
 
 NavigationStack{
 
 ZStack {
 theme
 .ignoresSafeArea()
 VStack(alignment: .center) {
 Spacer()
 .frame(height: 0)
 .clipped()
 Image(systemName: "moon.circle")
 .imageScale(.large)
 .font(.system(size: 55, weight: .medium, design: .default))
 .foregroundColor(.yellow)
 .padding(.top, -10)
 HStack {
 VStack(alignment: .leading) {
 Text("Hello, Name")
 .font(.system(size: 37, weight: .bold, design: .default))
 .frame(alignment: .leading)
 .clipped()
 .padding(.leading,0)
 .padding(.top, -10)
 .foregroundColor(.white)
 Text("Your Dashboard")
 .font(.system(size: 21, weight: .regular, design: .default))
 .frame(alignment: .leading)
 .clipped()
 .padding(.leading, 20)
 // .padding(.top, 5)
 .padding(.bottom, 20)
 .foregroundColor(.white)
 }
 
 }
 //    Spacer()
 //    .frame(height: 0)
 .clipped()
 HStack {
 RoundedRectangle(cornerRadius: 10, style: .circular)
 .frame(maxWidth: .infinity, maxHeight: 130)
 .clipped()
 .foregroundColor(.white)
 .cornerRadius(20)
 .padding(.leading)
 .padding(.trailing, 2)
 .overlay {
 HStack(alignment: .center) {
 Image(systemName: "alarm")
 .imageScale(.medium)
 .font(.system(size: 30, weight: .bold, design: .default))
 //       .padding(.bottom, 5)
 NavigationLink(destination: AlarmView()) {
 Text("Set Alarm")
 .font(.headline.weight(.semibold))
 .padding(.trailing, 14)
 }.buttonStyle(PlainButtonStyle())
 }
 }
 RoundedRectangle(cornerRadius: 10, style: .circular)
 .frame(maxWidth: .infinity, maxHeight: 130)
 .clipped()
 .foregroundColor(.white)
 .cornerRadius(20)
 .padding(.trailing)
 .padding(.leading, 2)
 .overlay {
 HStack(alignment: .center) {
 
 Image(systemName: "waveform.path.ecg")
 .imageScale(.medium)
 .font(.system(size: 30, weight: .bold, design: .default))
 .padding(.bottom, 5)
 NavigationLink(destination: StatsView()) {
 Text("Sleep Analytics")
 .foregroundColor(.black)
 .font(.headline.weight(.semibold))
 .padding(.trailing, 50)
 }.buttonStyle(PlainButtonStyle())
 
 }
 }
 }
 .frame(maxWidth: .infinity, maxHeight: .infinity)
 .clipped()
 RoundedRectangle(cornerRadius: 10, style: .circular)
 .frame(maxWidth: .infinity, maxHeight: 80)
 .clipped()
 .foregroundColor(.white)
 .cornerRadius(20)
 .padding(.trailing)
 .padding(.leading, 16)
 .overlay {
 HStack {
 Image(systemName: "music.note")
 .imageScale(.large)
 .padding(.horizontal, 10)
 .font(.system(size: 28, weight: .regular, design: .default))
 NavigationLink(destination: AutoStopView()) {
 Text("Auto-Stop Audio")
 .foregroundColor(.black)
 .font(.headline.weight(.semibold))
 .padding(.trailing, 50)
 }.buttonStyle(PlainButtonStyle())
 }
 Spacer()
 .frame(height: 50)
 .clipped()
 Text("Sleep Stats")
 .padding(.leading, 16)
 .font(.system(size: 24, weight: .semibold, design: .default))
 .foregroundColor(.white)
 Spacer()
 .frame(height: 20)
 .clipped()
 VStack(alignment: .leading) {
 HStack {
 Image(systemName: "moon")
 .imageScale(.large)
 .foregroundColor(.yellow)
 Text("Avg. Sleep Time:   7hrs 15min")
 .foregroundColor(.white)
 .font(.subheadline.weight(.semibold))
 }
 .padding(.leading, 15)
 .padding(.bottom, 2)
 HStack {
 Image(systemName: "sun.max")
 .imageScale(.large)
 .foregroundColor(.yellow)
 Text("Avg. Wakeup Time: \(HealthStoreContainer().timeAsleep)")
 .foregroundColor(.white)
 .font(.subheadline.weight(.semibold))
 }
 .padding(.leading, 15)
 HStack {
 Image(systemName: "bed.double")
 .imageScale(.large)
 .foregroundColor(.yellow)
 Text("Avg. Time to Fall Asleep:   33 min")
 .foregroundColor(.white)
 .font(.subheadline.weight(.semibold))
 }
 .padding(.leading, 15)
 .padding(.top, 2)
 Spacer()
 .frame(height: 80)
 .clipped()
 Capsule(style: .continuous)
 .overlay {
 Text("Learn More")
 .foregroundColor(.white)
 .font(.headline.weight(.bold))
 }
 .foregroundColor(Color(.sRGB, red: 55/255, green: 40/255, blue: 183/255))
 .frame(width: 310, height: 50)
 .clipped()
 .padding(.leading, 27)
 Spacer()
 .frame(height: 40)
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
 }
 
 
 
 
 
 struct WelcomeView_Previews: PreviewProvider {
 static var previews: some View {
 WelcomeView()
 }
 
 
 
 }
 
 
 }
 
 */

/* ZStack {
 theme
 .ignoresSafeArea()
 VStack(alignment: .center) {
 Image(systemName: "moon.circle")
 .imageScale(.large)
 .font(.system(size: 55, weight: .medium, design: .default))
 .foregroundColor(.yellow)
 .padding()
 Spacer()
 .frame(height: 0)
 .clipped()
 
 HStack {
 VStack(alignment: .center) {
 Text("Hello, Salma!")
 .font(.system(size: 37, weight: .bold, design: .default))
 .frame(alignment: .leading)
 .clipped()
 .padding(.leading, 20)
 .foregroundColor(.white)
 Text("Your Dashboard")
 .font(.system(size: 21, weight: .regular, design: .default))
 .frame(alignment: .leading)
 .clipped()
 .padding(.leading, 20)
 .padding(.bottom, 10)
 .foregroundColor(.white)
 }
 */
