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
    var body: some View {
        ZStack {
            //background
            Color.black
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators:false) {
                TopMoviePreview(movie: exampleMovie2)
                    .frame(width: screen.width)
                    .padding(.top, -110)
                LazyVStack {
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
                                    ForEach(vm.getMovie(forCat: category)) { movie in
                                        StandardHomeMovie(movie: movie )
                                            .frame(width: 100, height: 200, alignment: .center)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                        
                    }
                }
            }
           
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
