//
//  ContentView.swift
//  2022_REMi
//
//  Created by Harshitha Rebala on 10/22/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
           Color.purple
            //Color(red: 1, green: 0.8, blue: 0)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
            
                HStack {
                    Text("Hello, Salma!")
                        .font(.headline)
                    Spacer()
                    Text("Sign Out")
                    
                }
                .padding(.vertical, 45)
                .padding(.horizontal, 24)
                .foregroundColor(.black)
                Spacer()
                VStack(alignment: .leading, spacing: 9) {
                    Text("REMi")
                        .font(.system(size: 24, weight: .medium, design: .default))
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .clipped()
                        .font(.headline.weight(.medium))
                        .foregroundColor(.white)
                    Text("Explore Nearby")
                        .font(.system(.headline, design: .serif))
                        .padding(.vertical, 12)
                        .padding(.horizontal, 15)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(12)
                        .padding(.top, 8)
                }
                .padding(.horizontal, 24)
                Spacer()
                    .frame(height: 100)
                    .clipped()
            }
            .background {
                Image("logo192")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .clipped()
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

