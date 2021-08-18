//
//  SearchBarView.swift
//  Netflix-Clone
//
//  Created by DHV on 18/08/2021.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var text: String
    
    @State private var isEditing = false
    @Binding var isLoading: Bool
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            Color.graySearchBackground
                .frame(width: 270, height:  36)
                .cornerRadius(5)
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.graySearchText)
                    .padding(.leading, 10)
                TextField("Search", text: $text)
                    .padding(7)
                    .padding(.leading, -18)
                    .padding(.horizontal,10)
                    .background(Color.graySearchBackground)			
                    .cornerRadius(5)
                    .foregroundColor(Color.white)
                    .onTapGesture(perform: {
                        isEditing = true
                    })
                if !text.isEmpty {
                    
                    if isLoading {
                        
                        Button(action: {
                            text = ""
                        }, label: {
                            ActivityIndicator(style: .medium, animate: .constant(true))
                                .configure {
                                    $0.color = .white
                                }
                                .frame(width: 35, height: 35)
                        })
                        .padding(.trailing, 18)
                        
                    }else {
                        Button(action: {
                            text = ""
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.graySearchText)
                                .frame(width: 35, height: 35)
                        })
                        .padding(.trailing, 18)
                        
                    }
                    
                }
                
                
                if isEditing {
                    Button(action: {
                        isEditing = false
                        text = ""
                        hideKeyboard()
                    }, label: {
                        Text("Cancel")
                            .foregroundColor(Color.white)
                    })
                    .padding(.trailing, 15)
                }
                
               
            }
        }
        .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(text: .constant(""), isLoading: .constant(false))
            .preferredColorScheme(.dark)
    }
}
