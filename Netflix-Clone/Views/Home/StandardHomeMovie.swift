//
//  StandardHomeMovie.swift
//  Netflix-Clone
//
//  Created by DHV on 09/08/2021.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovie: View {
    var movie: Movie
    var body: some View {
        GeometryReader { proxy in
            KFImage(movie.thumnailURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: proxy.size.width, height: proxy.size.height)
                .clipped()
                .cornerRadius(8)
        }
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
            .frame(width: 200, height: 300, alignment: .center)
    }
}
