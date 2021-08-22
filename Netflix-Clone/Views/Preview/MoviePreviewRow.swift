//
//  MoviePreviewRow.swift
//  Netflix-Clone
//
//  Created by DHV on 19/08/2021.
//

import SwiftUI

struct MoviePreviewRow: View {
    var movies: [Movie]
    
    @Binding var showPreviewFullScreen:Bool
    @Binding var previewStartingIndex: Int

    var body: some View {
        VStack(alignment: .leading) {
            Text("Previews")
                .font(.title3)
                .bold()
                .foregroundColor(.white)
                .padding(.leading, 6)
            ScrollView(.horizontal, showsIndicators: false, content: {
                LazyHStack {
                    ForEach(0..<movies.count) { index in
                        let movie = movies[index]
                        
                        MoviePreviewCell(movie: movie)
                            .frame(width: 120, height: 120)
                            .padding(.trailing, 14)
                            .padding(.leading, 6)
                            .onTapGesture(perform: {
                                previewStartingIndex = index
                                showPreviewFullScreen = true
                            })
                    }
                }
            })
        }
        .frame(height: 185)
    }
}

struct MoviePreviewRow_Previews: PreviewProvider {
    static var previews: some View {
        MoviePreviewRow(movies: exampleMovies, showPreviewFullScreen: .constant(false), previewStartingIndex: .constant(0))
            .preferredColorScheme(.dark)
    }
}
