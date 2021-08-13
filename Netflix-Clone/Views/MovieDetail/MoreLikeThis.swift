//
//  MoreLikeThis.swift
//  Netflix-Clone
//
//  Created by DHV on 13/08/2021.
//

import SwiftUI

struct MoreLikeThis: View {
    var movies: [Movie]
    
    let columuns = [
    
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columuns) {
                ForEach(0..<movies.count) { index in
                    StandardHomeMovie(movie: movies[index])
                }
            }
            
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies)
    }
}
