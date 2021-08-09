//
//  TopMoviePreview.swift
//  Netflix-Clone
//
//  Created by DHV on 09/08/2021.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    
    func isCategoryLast( _ cat: String ) -> Bool {
        let countCat = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != countCat {
                return false
            }
            
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                
                HStack{
                    ForEach(movie.categories, id: \.self) { cat in
                        
                        HStack {
                            Text(cat)
                                .font(.footnote)
                            if !isCategoryLast(cat) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 5))
                            }
                            
                        }
                        
                    }
                }
                // Text("Category")
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn:  true) {
                        //
                    }
                    Spacer()
                    WhiteButton(imageName: "play.fill", text: "Play") {
                        //
                    }
                    .frame(width: 120)
                    Spacer()
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //
                    }
                    Spacer()
                }
                
            }
            .background(
                LinearGradient.blackLinearGardient
                    .padding(.top, 250)
            )
            
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie)
    }
}
