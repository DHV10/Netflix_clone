//
//  MovieDetail.swift
//  Netflix-Clone
//
//  Created by DHV on 10/08/2021.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    let screen = UIScreen.main.bounds
    
    @State private var showSeasonPicker = false
    @State private var selectedSeason = 1
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            ZStack {
                VStack {
                    
                    HStack {
                        
                        Spacer()
                        Button(action: {
                            movieDetailToShow = nil
                        }, label: {
                            Image(systemName: "xmark.circle")
                                .font(.system(size: 28))
                        })
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding(.horizontal, 22)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            
                            StandardHomeMovie(movie: movie)
                                .frame(width: screen.width/2,  height: 275)
                            
                            MovieInfoSubHeadline(movie: movie)
                            
                            if movie.promotionHeadline != nil {
                                Text(movie.promotionHeadline!)
                                    .bold()
                                    .font(.headline)
                            }
                            
                            PlayButton(imageName: "play.fill", text: "Play", backgroundColor: Color.red) {
                                //
                            }
                            
                            //current ep Info
                            CurrentEpisodeInfomation(movie: movie)
                            
                            CastInfo(movie: movie)
                            
                            HStack(spacing: 60) {
                                SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage:"plus", isOn: false) {
                                    
                                }
                                
                                SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage:"hand.thumbsup", isOn: true) {
                                    
                                }
                                
                                SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage:"square.and.arrow.up", isOn: false) {
                                    
                                }
                                Spacer()
                            }
                            //.padding(.horizontal)
                            
                            CustomSwitch(movie: movie, tabs: [.episodes, .trailers, .more], showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
                            
                        }
                        .padding(.horizontal, 15)
                    }
                    
                    Spacer()
                }
                .foregroundColor(Color.white)
                
                if showSeasonPicker {
                    
                    Group {
                        Color.black.opacity(0.9)
                        
                        VStack(spacing: 35) {
                            Spacer()
                            
                            ForEach(0..<(movie.numberOfSeasons ?? 0)) { season in
                                
                                Button(action: {
                                    self.selectedSeason = season + 1
                                    self.showSeasonPicker = false
                                }, label: {
                                    Text("Season \(season + 1)")
                                        .foregroundColor(selectedSeason == season + 1 ? .white : .gray)
                                        .bold()
                                        .font(selectedSeason == season + 1 ? .title : .title2)
                                })
                                
                            }
                            Spacer()
                          
                            Button(action: {
                                self.showSeasonPicker = false
                            }, label: {
                                Image(systemName: "x.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 40))
                                    .scaleEffect(x: 1)
                            })
                            .padding(.bottom, 30)
                            
                        }
                    }
                    .edgesIgnoringSafeArea(.all)
                    
                }
            }
         
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie, movieDetailToShow: .constant(nil))
    }
}



struct MovieInfoSubHeadline: View {
    var movie: Movie
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating: String
    var body: some View {
        ZStack {
            
            Rectangle()
                .foregroundColor(.gray)
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20, alignment: .center)
    }
}

struct CastInfo: View {
    var movie: Movie
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                Spacer()
            }
            HStack {
                Text("Creators: \(movie.creators)")
                Spacer()
            }
            
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 5)
    }
}

struct CurrentEpisodeInfomation: View {
    var movie: Movie
    var body: some View {
        Group {
            HStack {
                VStack( spacing: 5) {
                    
                    
                    Text(movie.episoduInfoDisplay)
                        .bold()
                    
                    Text(movie.episodeDescriptionDisplay)
                        .font(.subheadline)
                    
                    
                }
                Spacer()
            }
        }
    }
}
