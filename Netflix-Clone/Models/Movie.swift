//
//  Movie.swift
//  Netflix-Clone
//
//  Created by DHV on 09/08/2021.
//

import Foundation

struct Movie: Identifiable{
    var id: String
    var name: String
    var thumnailURL: URL
    
    var categories: [String]
    
    //Movie detail view
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    var episodes: [Episode]?
    
    var promotionHeadline: String?
    
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
}
