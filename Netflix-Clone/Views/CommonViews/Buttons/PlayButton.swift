//
//  WhiteButton.swift
//  Netflix-Clone
//
//  Created by DHV on 09/08/2021.
//

import SwiftUI

struct PlayButton: View {
    var imageName: String
    var text: String
    var backgroundColor: Color = Color.white
    
    
    var action: () -> Void
    var body: some View {
        
        Button(action: {
            action()
        }, label: {
            HStack{
                Spacer()
                Image(systemName: imageName)
                
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                Spacer()
                
            }
            .padding(.vertical, 6)
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .background(backgroundColor)
            .cornerRadius(5)
        })
        
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton(imageName: "play.fill", text: "Play") {
            //
        }
        .preferredColorScheme(.dark)
    }
}
