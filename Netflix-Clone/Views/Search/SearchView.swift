//
//  SearchView.swift
//  Netflix-Clone
//
//  Created by DHV on 18/08/2021.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var vm = SearchVM()
   
    @State private var text: String = ""
    //@State private var isLoading = false
    @State private var movieDetailToShow: Movie? = nil
    var body: some View {
        let searchTextBinding = Binding {
            return text
        } set: {
            text = $0
            vm.updateSearchText(with: $0)
        }
        
        return
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    SearchBarView(text: searchTextBinding, isLoading: $vm.isLoading)
                      //  .padding(.vertical)
                    
                    ScrollView {
                        if vm.isShowingPopularMovies {
                            PopularMovieList(movies: vm.popularMovies, movieDetailToShow: $movieDetailToShow)
                        }
                        
                        if vm.viewState == .empty {
                            Text("Have 0 movies")
                                .bold()
                                .font(.title2)
                                .padding(40)
                        } else if vm.viewState == .ready && !vm.isShowingPopularMovies {
                            VStack {
                                HStack{
                                    Text("Movies & TV")
                                        .bold()
                                        .font(.title3)
                                        .padding(.leading, 12)
                                    Spacer()
                                }
                                SearchResultsGrid(movies: vm.searchResults, movieDetailToShow: $movieDetailToShow)
                            }
                        }
                    }
                  
                    Spacer()
                }
                if movieDetailToShow != nil {
                    MovieDetail(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                        
                }
            }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .preferredColorScheme(.dark)
            
    }
}

struct PopularMovieList: View {
    var movies : [Movie]
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        VStack {
            HStack{
                Text("Popular Searches")
                    .bold()
                    .font(.title3)
                    .padding(.leading, 12)
                Spacer()
            }
            
            LazyVStack {
                ForEach(movies, id: \.id) { movie in
                    PopularMovieView(movie: movie, movieDetailToShow: $movieDetailToShow)
                        .frame(height: 75)
                }
            }
        }
    }
}
