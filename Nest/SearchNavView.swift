//
//  TopNavView.swift
//  Nest
//
//  Created by user on 10/10/23.
//

import SwiftUI

struct SearchNavView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        HStack {
            VStack {
                TextField("Search", text: $searchText)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
            }
            .navigationBarTitle("")
            ZStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .offset(x: -85, y: 10)
                    .foregroundColor(.gray)
                
                Image(systemName: "line.horizontal.3")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .offset(x: -13, y: 10)
            }
        }
        .padding(.bottom)
    }
}

struct SearchNavView_Previews: PreviewProvider {
    static var previews: some View {
        SearchNavView()
    }
}
