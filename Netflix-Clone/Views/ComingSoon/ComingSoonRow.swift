//
//  ComingSoonRow.swift
//  Netflix-Clone
//
//  Created by DHV on 22/08/2021.
//

import SwiftUI
import KingfisherSwiftUI

struct ComingSoonRow: View {
    var movie: Movie
    
    @Binding var movieDetailToShow: Movie?
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            KFImage(movie.thumnailURL)
                .resizable()
                //.aspectRatio(contentMode: .fill)
                .frame(height: 200)
               // .clipped()
            
            VStack {
                HStack {
                    KFImage(movie.thumnailURL)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: screen.size.width / 4, height: 75)
                        .clipped()
                    
                  Spacer()
                    
                    Button(action: {
                        // remind me
                    }, label: {
                        VStack(spacing: 6) {
                            Image(systemName: "bell")
                                .font(.title3)
                            Text("Remind Me")
                        }
                    })
                    .padding(.horizontal)
                    
                    Button(action: {
                        movieDetailToShow = movie
                    }, label: {
                        VStack(spacing: 6) {
                            Image(systemName: "info.circle")
                                .font(.title3)
                            Text("Info")
                        }
                    })
                    .padding(.trailing, 24)
                }
                .font(.caption)
                
                VStack(alignment: .leading) {
                    Text(movie.name)
                        .font(.title2)
                        .bold()
                    Text(movie.episodeDescriptionDisplay)
                        .foregroundColor(.gray)
                        .font(.subheadline)
                }
            }
            .foregroundColor(.white)
            .padding(6)
        }
        
    }
}

struct ComingSoonRow_Previews: PreviewProvider {
    static var previews: some View {
        ComingSoonRow(movie: exampleMovie1, movieDetailToShow: .constant(nil))
            .preferredColorScheme(.dark)
    }
}
