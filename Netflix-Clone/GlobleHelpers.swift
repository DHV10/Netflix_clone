//
//  GlobleHelpers.swift
//  Netflix-Clone
//
//  Created by DHV on 09/08/2021.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

var ramdomExampleImageURL: URL {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
    
}

let exampleTrailer1 = Trailer(name: "Season3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)

let exampleTrailer2 = Trailer(name: "The Batman Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)

let exampleTrailer3 = Trailer(name: "The Joker Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)

let exampleTrailers: [Trailer] = [exampleTrailer1, exampleTrailer2, exampleTrailer3 ]

let exampleMovie = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dytopian", "Exciting", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"DHV, Jokers, Batman",
    cast:"DHV, Superman, Harley Quin, Songoku",
    moreLikeThisMovie: [exampleMovie5, exampleMovie4, exampleMovie3, exampleMovie2, exampleMovie1, exampleMovie6],
    promotionHeadline: "Coming soon",
    trailers: exampleTrailers)

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Traveler",
    thumnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dytopian", "Exciting", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"DHV, Jokers, Batman",
    cast:"DHV, Superman, Harley Quin, Songoku",
    moreLikeThisMovie: [],
    trailers: exampleTrailers)

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dytopian", "Exciting", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"DHV, Jokers, Batman",
    cast:"DHV, Superman, Harley Quin, Songoku",
    moreLikeThisMovie: [],
    promotionHeadline: "Watch season 3",
    trailers: exampleTrailers)

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dytopian", "Exciting", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"DHV, Jokers, Batman",
    cast:"DHV, Superman, Harley Quin, Songoku",
    moreLikeThisMovie: [],
    trailers: exampleTrailers)


let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dytopian", "Exciting", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"DHV, Jokers, Batman",
    cast:"DHV, Superman, Harley Quin, Songoku",
    moreLikeThisMovie: [],
    trailers: exampleTrailers)

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dytopian", "Exciting", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"DHV, Jokers, Batman",
    cast:"DHV, Superman, Harley Quin, Songoku",
    moreLikeThisMovie: [],
    trailers: exampleTrailers)
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dytopian", "Exciting", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"DHV, Jokers, Batman",
    cast:"DHV, Superman, Harley Quin, Songoku",
    moreLikeThisMovie: [],
    trailers: exampleTrailers)

var exampleMovies:[Movie] {
    [exampleMovie5, exampleMovie4, exampleMovie3, exampleMovie2, exampleMovie1, exampleMovie].shuffled()
}


let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "The Batman", description: "With sequels and a spin-off film, this movie is a modern remake that follows a motley crew of skilled but quirky “professionals” in a fun, twisting heist adventure. ", season: 2, episode: 1)

extension LinearGradient {
   static let blackLinearGardient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)

}

extension String {
    
    func widthOfString(usingFont font: UIFont ) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
    
}
