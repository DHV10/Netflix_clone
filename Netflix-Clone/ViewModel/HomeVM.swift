//
//  HomeVm.swift
//  Netflix-Clone
//
//  Created by DHV on 09/08/2021.
//

import Foundation

class HomeVM: ObservableObject {
    //String == category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
         movies.keys.map( { String($0)} )
    }
    public func getMovie(forCat cat: String ) -> [Movie] {
        
        return movies[cat] ?? []
        
    }
    init() {
        setupMovie()
    }
    
    func setupMovie() {
        movies["Trending Now"] = exampleMovies
        movies["Stand - Up Comdy"] = exampleMovies
        movies["New Release"] = exampleMovies
        movies["Watch It Again"] = exampleMovies
        movies["Action"] = exampleMovies
    }
    
}
