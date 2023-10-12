//
//  TopNavView.swift
//  Nest
//
//  Created by user on 10/10/23.
//

import SwiftUI

struct SearchNavView: View {
    @State private var searchText: String = ""
    
    @State var menuCheck: Bool = false
    
    var body: some View {
        VStack {
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
                    
                    Button (action: {
                        menuCheck.toggle()
                    }) {
                        ZStack {
                            Circle()
                                .fill(Color.gray.opacity(0.2))
                                .frame(width: 50, height: 50)
                                .offset(x: -13, y: 10)
                            
                            Image(systemName: "line.horizontal.3")
                                .resizable()
                                .foregroundColor(.gray)
                                .frame(width: 20, height: 20)
                                .offset(x: -13, y: 10)
                            
                        }
                    }
                }
            }
            .padding(.bottom)
            
            if (menuCheck) {
                HStack {
                    Spacer()
                    
                    Rectangle()
                        .frame(height: 650)
                }
            }
        }
    }
}

struct SearchNavView_Previews: PreviewProvider {
    static var previews: some View {
        SearchNavView()
    }
}
