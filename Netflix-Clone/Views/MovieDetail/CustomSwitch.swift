//
//  CustomSwitch.swift
//  Netflix-Clone
//
//  Created by DHV on 12/08/2021.
//

import SwiftUI

struct CustomSwitch: View {
    
    @State private var currentTab: CustomTab = .episodes
    var movie: Movie
    
    var tabs: [CustomTab]
    
    func widthForTab( _ tab : CustomTab) -> CGFloat {
        
        let string = tab.rawValue
        
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            //Scroll
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        
                        
                        VStack {
                            Rectangle()
                                .frame(width: widthForTab(tab) , height: 6)
                                .foregroundColor(tab == currentTab ? Color.red : Color.clear)
                            
                            Button(action: {
                                //
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? Color.white : Color.gray)
                                    
                            })
                            .frame(width: widthForTab(tab) , height: 30)
                            .buttonStyle(PlainButtonStyle())
                        }
                        
                    }
                }
            }
            
            switch currentTab {
            case .episodes:
                Text("Episodes")
            case .trailers:
                TrailerList(trailers: movie.trailers)
            case .more:
                MoreLikeThis(movies: movie.moreLikeThisMovie)
              
            }
          
        }
        .foregroundColor(.white)
        
    }
}

enum CustomTab : String {
    
    case episodes = "EPISODES"
    case trailers = "TRAILERS AND MORE"
    case more = "MORE LIKE THIS"
    
}

struct CustomSwitch_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomSwitch(movie: exampleMovie, tabs: [.episodes, .trailers, .more])
        }
        
        
    }
}
