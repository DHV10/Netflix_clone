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

let episode1 = Episode(name: "Beginnings and Endings",
                         season: 1,
                         episodeNumber: 1,
                         thumbnailImageURLString: "https://picsum.photos/300/112",
                         description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                         length: 53,
                         videoURL: exampleVideoURL)
let episode2 = Episode(name: "Dark Matter",
                         season: 1,
                         episodeNumber: 2,
                         thumbnailImageURLString: "https://picsum.photos/300/111",
                         description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
                         length: 54,
                         videoURL: exampleVideoURL)
let episode3 = Episode(name: "Ghosts",
                         season: 1,
                         episodeNumber: 3,
                         thumbnailImageURLString: "https://picsum.photos/300/110",
                         description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
                         length: 56,
                         videoURL: exampleVideoURL)

let episode4 = Episode(name: "Dark Matter",
                         season: 2,
                         episodeNumber: 1,
                         thumbnailImageURLString: "https://picsum.photos/300/109",
                         description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                         length: 53,
                         videoURL: exampleVideoURL)
let episode5 = Episode(name: "Beginnings and Endings",
                         season: 2,
                         episodeNumber: 2,
                         thumbnailImageURLString: "https://picsum.photos/300/108",
                         description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
                         length: 54,
                         videoURL: exampleVideoURL)
let episode6 = Episode(name: "Ghosts",
                         season: 2,
                         episodeNumber: 3,
                         thumbnailImageURLString: "https://picsum.photos/300/111",
                         description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
                         length: 56,
                         videoURL: exampleVideoURL)



var allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5]

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
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"DHV, Jokers, Batman",
    cast:"DHV, Superman, Harley Quin, Songoku",
    moreLikeThisMovie: [exampleMovie5, exampleMovie4, exampleMovie3, exampleMovie2, exampleMovie1, exampleMovie6],
    episodes: allExampleEpisodes,
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
    episodes: allExampleEpisodes,
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

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
