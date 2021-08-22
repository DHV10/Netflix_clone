//
//  ComingSoon.swift
//  Netflix-Clone
//
//  Created by DHV on 18/08/2021.
//

import SwiftUI

struct ComingSoon: View {
    @State private var showNotificationList = false
    @State private var movieDetailToShow: Movie? = nil
    
    @State private var scrollOffset: CGFloat = 0.0
    @State private var activeIndex = 0
    
    @ObservedObject var vm = ComingSoonVM()
    
    func updateActiveIndex(fromScroll scroll: CGFloat) {
        if scroll < 105 {
            activeIndex = 0
        }else {
            let remove105 = scroll - 105
            let active = Int(remove105 / 410) + 1
            activeIndex = Int(active)
            
        }
    }
    var body: some View {
        let movies = vm.movies.enumerated().map({ $0 })
        
        let scrollTrackingBinding = Binding {
            return scrollOffset
        } set: { newValue in
            scrollOffset = newValue
            updateActiveIndex(fromScroll: newValue)
            
        }

        return Group {
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                TrackableScrollView(.vertical, showIndicators: false, contentOffset: scrollTrackingBinding) {
                    LazyVStack {
                        NotificationBar(showNotificationList: $showNotificationList)
                        
                        ForEach(Array(movies), id: \.offset) { index, movie in
                            
                            ComingSoonRow(movie: movie, movieDetailToShow: $movieDetailToShow)
                                .frame(height: 400)
                                .overlay(
                                
                                    Group {
                                        index == activeIndex ? Color.clear : Color.black.opacity(0.8)
                                    }
                                    .animation(.easeInOut)
                                )
                        }
                       
                    }

                }
                
                .foregroundColor(.white)
            }
        }
    }
}

struct ComingSoon_Previews: PreviewProvider {
    static var previews: some View {
        ComingSoon()
    }
}
