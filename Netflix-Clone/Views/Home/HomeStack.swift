//
//  HomeStack.swift
//  Netflix-Clone
//
//  Created by DHV on 18/08/2021.
//

import Foundation
import SwiftUI

struct HomeStack: View {
    var vm: HomeVM
    var topRowSelection: HomeTopRow
    var selectedGenre: HomeGenre
    
    @Binding var movieDetailToShow: Movie?
    var body: some View {
        ForEach(vm.allCategories, id: \.self) { category  in
            //a category
            VStack {
                //category name
                HStack {
                    Text(category)
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                //MARK: - //list movie in a category
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(vm.getMovie(forCat: category, andHomeRow: topRowSelection, andGenre: selectedGenre)) { movie in
                            StandardHomeMovie(movie: movie )
                                .frame(width: 150, height: 200, alignment: .center)
                                //.padding(.horizontal, 20)
                                .onTapGesture {
                                    movieDetailToShow = movie
                                }
                        }
                    }
                }
            }
            
        }
    }
}

struct HomeStack_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            HomeStack(vm: HomeVM(), topRowSelection: .home, selectedGenre: .AllGenres, movieDetailToShow: .constant(nil))
                .foregroundColor(.white)
        }
        .preferredColorScheme(.dark)
        
    }
}
