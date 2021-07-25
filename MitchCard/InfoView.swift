//
//  InfoView.swift
//  MitchCard
//
//  Created by Mitchell Murphy on 7/24/21.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var imageColor: Color = Color(red: 0.04, green: 0.52, blue: 0.89)
    var textColor: Color = .black
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color.white)
            .frame(height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding(.all)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(imageColor)
                Text(text)
                    .foregroundColor(textColor)
            })
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
