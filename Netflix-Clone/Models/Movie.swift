//
//  Movie.swift
//  Netflix-Clone
//
//  Created by DHV on 09/08/2021.
//

import Foundation
import SwiftUI

struct Movie: Identifiable{
    var id: String
    var name: String
    var thumnailURL: URL
    
    var categories: [String]
    var genre: HomeGenre = .AllGenres
    
    //Movie detail view
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    //Personalzation
    var currentEpisode: CurrentEpisodeInfo?
    
    var defaultEpisodeInfo: CurrentEpisodeInfo
    var creators: String
    var cast: String
    var moreLikeThisMovie: [Movie]
    
    var episodes: [Episode]?
    
    var movieType: MovieType {
        return episodes == nil ? .movie : .tvShow
    }
    
    var promotionHeadline: String?
    
    var trailers: [Trailer]
    
    var previewImageName: String?
    var previewVideoURL: URL?
    
    var numberOfSeasonDisplay : String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
    
    var episoduInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode): \(current.episodeName)"
            
        }else {
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode): \(defaultEpisodeInfo.episodeName)"
        }
        
    }
    
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
            
        }
        else {
            return defaultEpisodeInfo.description
            
        }
    }
}


struct CurrentEpisodeInfo: Hashable , Equatable {
    
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
    
}

enum MovieType {
    case movie
    case tvShow
}

struct Movie_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
