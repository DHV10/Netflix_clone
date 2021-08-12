//
//  Episode.swift
//  Netflix-Clone
//
//  Created by DHV on 10/08/2021.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    
    var length : Int
    
    var thumbnailURL: URL {
        
        return URL(string: thumbnailImageURLString)!
        
    }
}


