//
//  SmallVerticalButton.swift
//  Netflix-Clone
//
//  Created by DHV on 09/08/2021.
//

import SwiftUI

struct SmallVerticalButton: View {
    var text: String
    
    var isOnImage: String
    var isOffImage: String
    var imageName: String {
        if isOn{
            return isOnImage
        }else {
            return isOffImage
        }
        
    }
    
    var isOn: Bool
    
    var action: () -> Void
    
    var body: some View {
        
        Button(action: {
            action()
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        })
        
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
            print("tapped")
        }
            .preferredColorScheme(.dark)
    }
}
