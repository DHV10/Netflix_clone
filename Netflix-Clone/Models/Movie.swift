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
}
