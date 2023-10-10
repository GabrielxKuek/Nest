//
//  ProfileFavouritesView.swift
//  Nest
//
//  Created by user on 11/10/23.
//

import SwiftUI

struct ProfileFavouritesView: View {
    @State private var searchFavourites: String = ""
    
    var body: some View {
        ScrollView {
            HStack {
                Image(systemName: "slider.horizontal.3")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .offset(x: 12, y: 10)
                
                TextField("Search", text: $searchFavourites)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
            }
            .padding(.bottom)
            
            // Videoes
            VStack {
                Rectangle()
                    .fill(Color.blue)
                    .frame(height: 200)
                    .padding()
                
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    VStack {
                        Text("Username")
                            .fontWeight(.bold)
                            .offset(x: -50)
                        
                        Text("DD MM YYYY | Tag, Tag")
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "hand.thumbsup")
                    Text("44")
                    Image(systemName: "hand.thumbsdown")
                    Text("3")
                }
                .padding(.horizontal)
            }
            
            VStack {
                Rectangle()
                    .fill(Color.blue)
                    .frame(height: 200)
                    .padding()
                
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    VStack {
                        Text("Username")
                            .fontWeight(.bold)
                            .offset(x: -50)
                        
                        Text("DD MM YYYY | Tag, Tag")
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "hand.thumbsup")
                    Text("44")
                    Image(systemName: "hand.thumbsdown")
                    Text("3")
                }
                .padding(.horizontal)
            }
            
            VStack {
                Rectangle()
                    .fill(Color.blue)
                    .frame(height: 200)
                    .padding()
                
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    VStack {
                        Text("Username")
                            .fontWeight(.bold)
                            .offset(x: -50)
                        
                        Text("DD MM YYYY | Tag, Tag")
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "hand.thumbsup")
                    Text("44")
                    Image(systemName: "hand.thumbsdown")
                    Text("3")
                }
                .padding(.horizontal)
            }
        }
    }
}

struct ProfileFavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileFavouritesView()
    }
}
