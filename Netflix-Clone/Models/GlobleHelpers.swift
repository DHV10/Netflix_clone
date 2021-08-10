//
//  GlobleHelpers.swift
//  Netflix-Clone
//
//  Created by DHV on 09/08/2021.
//

import Foundation
import SwiftUI

let exampleMovie = Movie(id: UUID().uuidString, name: "DARK", thumnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dytopian", "Exciting", "Sci-Fi TV"])
let exampleMovie1 = Movie(id: UUID().uuidString, name: "Traveler", thumnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dytopian", "Exciting", "Sci-Fi TV"])
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Community", thumnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dytopian", "Exciting", "Sci-Fi TV"])
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Alone", thumnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dytopian", "Exciting", "Sci-Fi TV"])
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Hannibal", thumnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dytopian", "Exciting", "Sci-Fi TV"])
let exampleMovie5 = Movie(id: UUID().uuidString, name: "After Life", thumnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Dytopian", "Exciting", "Sci-Fi TV"])

let exampleMovies = [exampleMovie, exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5]

extension LinearGradient {
   static let blackLinearGardient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)

}
