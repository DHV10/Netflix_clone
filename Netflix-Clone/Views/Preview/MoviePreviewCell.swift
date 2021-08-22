//
//  MoviePreviewCell.swift
//  Netflix-Clone
//
//  Created by DHV on 19/08/2021.
//

import SwiftUI
import KingfisherSwiftUI

struct MoviePreviewCell: View {
    var movie: Movie
    
    let colors: [Color] = [.yellow, .gray, .pink, .red, .blue, .green, .orange]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            KFImage(movie.thumnailURL)
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(lineWidth: 3)
                        .foregroundColor(colors.randomElement())
                        
                )
            
            Image(movie.previewImageName)
                .resizable()
                .scaledToFit()
                .offset(y: -20)
                .frame(height: 65)
        }
    }
}

struct MoviePreviewCell_Previews: PreviewProvider {
    static var previews: some View {
        MoviePreviewCell(movie: exampleMovie)
            .preferredColorScheme(.dark)
            .frame(width: 165, height: 50)
    }
}
