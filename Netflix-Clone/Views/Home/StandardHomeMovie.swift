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
        KFImage(movie.thumnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie)
            .frame(width: 200, height: 300, alignment: .center)
    }
}
