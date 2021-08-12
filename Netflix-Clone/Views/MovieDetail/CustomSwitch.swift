//
//  CustomSwitch.swift
//  Netflix-Clone
//
//  Created by DHV on 12/08/2021.
//

import SwiftUI

struct CustomSwitch: View {
    
    var tabs: [CustomTab]
    
    func widthForTab( _ tab : CustomTab) -> CGFloat {
        
        let string = tab.rawValue
        
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            //Scroll
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack {
                    ForEach(tabs, id: \.self) { tab in
                        
                        
                        VStack {
                            Rectangle()
                                .frame(width: widthForTab(tab) , height: 6)
                                .foregroundColor(.red)
                            
                            Button(action: {
                                //
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    
                            })
                            .buttonStyle(PlainButtonStyle())
                        }
                        
                    }
                }
            }
            
            Text("VIEW SELECTED")
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
            CustomSwitch(tabs: [.episodes, .trailers, .more])
        }
        
        
    }
}
