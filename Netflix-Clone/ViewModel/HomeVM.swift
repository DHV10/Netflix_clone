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
    
    public var allGenre: [HomeGenre] = [.AllGenres, .Action, .Comedy, .Horror, .Thriller, .Document]
    
    public func getMovie(forCat cat: String, andHomeRow homeRow: HomeTopRow, andGenre genre: HomeGenre ) -> [Movie] {
        
        switch homeRow {
        case .home:
            return movies[cat] ?? []
        case .movies:
            return (movies[cat] ?? []).filter{($0.movieType == .movie) && ($0.genre == genre )}
        case .tvShows:
            return (movies[cat] ?? []).filter{($0.movieType == .tvShow) && ($0.genre == genre )}
        case .myList:
            return movies[cat] ?? []
        }
        
        
        
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
