//
//  Trailer.swift
//  Netflix-Clone
//
//  Created by DHV on 13/08/2021.
//

import Foundation

struct Trailer: Identifiable {
    
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
    
}
