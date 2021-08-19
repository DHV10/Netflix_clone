//
//  PopularMovieView.swift
//  Netflix-Clone
//
//  Created by DHV on 19/08/2021.
//

import SwiftUI
import KingfisherSwiftUI

struct PopularMovieView: View {
    var movie: Movie
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        GeometryReader { geo in
            HStack {
                KFImage(movie.thumnailURL)
                    .resizable()
                    .frame(width: geo.size.width/3)
                    .padding(.leading,3)
                
                Text(movie.name)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrowtriangle.right.fill")
                })
                .padding(.trailing, 15)
            }
            .foregroundColor(.white)
            .onTapGesture(perform: {
                self.movieDetailToShow = movie
            })
            
        }
    }
}

struct PopularMovieView_Previews: PreviewProvider {
    static var previews: some View {
        PopularMovieView(movie: exampleMovie, movieDetailToShow: .constant(nil))
            .preferredColorScheme(.dark)
            .frame(height: 75)
    }
}
