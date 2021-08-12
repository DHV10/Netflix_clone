//
//  GlobleHelpers.swift
//  Netflix-Clone
//
//  Created by DHV on 09/08/2021.
//

import Foundation
import SwiftUI

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
    promotionHeadline: "Coming soon")

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
    cast:"DHV, Superman, Harley Quin, Songoku")

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
    promotionHeadline: "Watch season 3")

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dytopian", "Exciting", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"DHV, Jokers, Batman",
    cast:"DHV, Superman, Harley Quin, Songoku")

let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dytopian", "Exciting", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"DHV, Jokers, Batman",
    cast:"DHV, Superman, Harley Quin, Songoku")

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dytopian", "Exciting", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"DHV, Jokers, Batman",
    cast:"DHV, Superman, Harley Quin, Songoku")

let exampleMovies = [exampleMovie, exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5]

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
