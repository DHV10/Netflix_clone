//
//  HomeView.swift
//  Netflix-Clone
//
//  Created by DHV on 09/08/2021.
//

import SwiftUI

struct HomeView: View {
    var vm: HomeVM = HomeVM()
    
    let screen = UIScreen.main.bounds
    
    @State private var movieDetailToShow: Movie? = nil
    
    @State private var topRowSelection: HomeTopRow = .home
    @State private var homeGenre: HomeGenre = .AllGenres
    
    @State private var showTopRowSelection = false
    @State private var showGenreSelection = false
    
    @Binding var showPreviewFullScreen:Bool
    @Binding var previewStartingIndex: Int
    
    var body: some View {
        ZStack {
            //background
            Color.black
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators:false) {
                LazyVStack {
                    
                    TopRowButtons(topRowSelection: $topRowSelection, homeGenre: $homeGenre, showTopRowSelection: $showTopRowSelection, showGenreSelection: $showGenreSelection)
                 
                    TopMoviePreview(movie: exampleMovie2)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1)
                    
                    MoviePreviewRow(
                        movies: exampleMovies,
                        showPreviewFullScreen: $showPreviewFullScreen,
                        previewStartingIndex: $previewStartingIndex)
                    
                    HomeStack(vm: vm,
                              topRowSelection: topRowSelection,
                              selectedGenre: homeGenre,
                              movieDetailToShow: $movieDetailToShow)
                }
            }
           //
            if movieDetailToShow != nil {
                MovieDetail(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeIn)
                    .transition(.opacity)
            }
            
            if showTopRowSelection {
                Group {
                    Color.black.opacity(0.9)
                    
                    VStack(spacing: 40) {
                        Spacer()
                        ForEach(HomeTopRow.allCases, id: \.self){ topRow in
                            
                            Button(action: {
                                topRowSelection = topRow
                                showTopRowSelection = false
                            }, label: {
                                if topRow == topRowSelection {
                                    Text("\(topRow.rawValue)")
                                        .bold()
                                } else {
                                    Text("\(topRow.rawValue)")
                                        .foregroundColor(.gray)
                                }
                            })
                       
                        }
                        
                        Spacer()
                        Button(action: {
                            showTopRowSelection = false
                        }, label: {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 40))
                                .scaleEffect(x: 1.1)
                        })
                        .padding(.bottom, 30)
                    }
                    
                }
                .edgesIgnoringSafeArea(.all)
                .font(.title2)
            }
            
            if showGenreSelection {
                Group {
                    Color.black.opacity(0.9)
                    
                  
                        VStack(spacing: 40) {
                         
                            Spacer()
                            
                            ScrollView {
                                ForEach(vm.allGenre, id: \.self){ genre in
                                    
                                    Button(action: {
                                        homeGenre = genre
                                        showGenreSelection = false
                                    }, label: {
                                        if genre == homeGenre {
                                            Text("\(genre.rawValue)")
                                                .bold()
                                        } else {
                                            Text("\(genre.rawValue)")
                                                .foregroundColor(.gray)
                                        }
                                    })
                                    .padding(.bottom , 40)
                               
                                }
                            }
                            
                            
                            Spacer()
                            
                            Button(action: {
                                showGenreSelection = false
                            }, label: {
                                Image(systemName: "x.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 40))
                                    .scaleEffect(x: 1.1)
                            })
                            .padding(.bottom, 30)
                        }
                    
                    
                    
                }
                .edgesIgnoringSafeArea(.all)
                .font(.title2)
            }
            
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showPreviewFullScreen: .constant(false), previewStartingIndex: .constant(0))
    }
}

struct TopRowButtons: View {
    @Binding var topRowSelection: HomeTopRow
    @Binding var homeGenre: HomeGenre
    
    @Binding var showTopRowSelection: Bool
    @Binding var showGenreSelection: Bool
    var body: some View {
        switch topRowSelection {
        case .home:
            HStack {
                Spacer()
                Button(action: {
                    topRowSelection = .home
                }, label: {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                })
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
                Button(action: {
                    topRowSelection = .tvShows
                }, label: {
                    Text("TV Shows")
                        .font(.title3)
                })
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
                Button(action: {
                    topRowSelection = .movies
                }, label: {
                    Text("Movies")
                        .font(.title3)
                })
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
                Button(action: {
                    topRowSelection = .myList
                }, label: {
                    Text("My List")
                        .font(.title3)
                })
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
            }
    //        .background(Color.black)
            .padding(.leading, 10)
            .padding(.trailing, 30)
            
        case .tvShows, .movies, .myList:
            HStack(spacing:20) {
               
                Button(action: {
                    topRowSelection = .home
                }, label: {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                })
                .buttonStyle(PlainButtonStyle())
                
               
                HStack(spacing: 20) {
                    Button(action: {
                        showTopRowSelection = true
                    }, label: {
                        Text(topRowSelection.rawValue)
                            .font(.title2)
                        
                        Image(systemName: "triangle.fill")
                            .font(.system(size: 10))
                            .rotationEffect(.degrees(180), anchor: .center)
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                    Button(action: {
                        showGenreSelection = true
                    }, label: {
                        Text(homeGenre.rawValue)
                            .font(.system(size: 14))
                        
                        Image(systemName: "triangle.fill")
                            .font(.system(size: 8))
                            .rotationEffect(.degrees(180), anchor: .center)
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                
                
             
                
                Spacer()
             
            }
    //        .background(Color.black)
            .padding(.leading, 20)
            .padding(.trailing, 30)
        
        }
        

    }
}

enum HomeTopRow: String, CaseIterable {
    case home = "Home"
    case tvShows = "TV Shows"
    case movies = "Movies"
    case myList = "My List"
}

enum HomeGenre: String {
    case AllGenres
    case Action
    case Comedy
    case Horror
    case Thriller
    case Document
}

