//
//  SearchView.swift
//  Netflix-Clone
//
//  Created by DHV on 18/08/2021.
//

import SwiftUI

struct SearchView: View {
    @State private var text: String = ""
    @State private var isLoading = false
    var body: some View {
        VStack {
       SearchBarView(text: $text, isLoading: $isLoading)
        .padding(.vertical)
            Spacer()
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .preferredColorScheme(.dark)
            
    }
}
