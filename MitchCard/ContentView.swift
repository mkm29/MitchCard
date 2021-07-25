//
//  ContentView.swift
//  MitchCard
//
//  Created by Mitchell Murphy on 7/24/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.04, green: 0.52, blue: 0.89)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("mitch")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 2.0)
                    )
                Text("Mitchell Murphy")
                    .font(Font.custom("Pacifico-Regular", size: 30))
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                Text("DevSecOps Engineer")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                Divider()
                InfoView(text: "mitch.murphy@gmail.com", imageName: "envelope.fill")
                InfoView(text: "mitchmurphy.io", imageName: "link", imageColor: .green, textColor: .gray)

            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
