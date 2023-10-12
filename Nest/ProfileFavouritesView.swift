//
//  ProfileFavouritesView.swift
//  Nest
//
//  Created by user on 11/10/23.
//

import SwiftUI

struct ProfileFavouritesView: View {
    @State private var searchFavourites: String = ""
    @State var mutefav: Bool = false
    
    func favVideo(image: String, username: String, title: String, likes: Int, dislikes: Int, favourites: Int, date: String, tag: String) -> some View {
        
        VStack {
            ZStack (alignment: .leading) {
                Image("\(image)")
                    .resizable()
                    .frame(height: 200)
                    .overlay(
                        LinearGradient(
                            gradient: Gradient(colors: [.black, .clear]),
                            startPoint: .bottom,
                            endPoint: .top
                        )
                        
                    )
                
                VStack {
                    Spacer()
                    
                    HStack {
                        Text("\(title)")
                            .font(.title)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.leading)
                            .padding(.vertical)
                        
                        Spacer()
                        
                        Button (action: {
                            mutefav.toggle()
                        }) {
                            if (mutefav) {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.yellow)
                                    .padding(.trailing)
                                
                            } else {
                                Image(systemName: "star")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.yellow)
                                    .padding(.trailing)
                                
                            }
                        }
                    }
                }
                
            }
            
            HStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                
                VStack(alignment: .leading) {
                    Text("\(username)")
                        .fontWeight(.bold)
                    
                    Text("\(date) | \(tag)")
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Image(systemName: "hand.thumbsup")
                Text("\(likes)")
                Image(systemName: "hand.thumbsdown")
                Text("\(dislikes)")
            }
        }
        .padding(.horizontal)
        
    }
    
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
            favVideo(image: "teddy", username: "John D. Doe", title: "Clothing Bear Toys", likes: 996, dislikes: 42, favourites: 729, date: "17 Jul 2023", tag: "clothes, toy")
            
            favVideo(image: "old-man", username: "Terrence Chay", title: "Paper-mache Figure", likes: 403, dislikes: 88, favourites: 729, date: "4 Oct 2023", tag: "newspaper")
            
            favVideo(image: "pillows", username: "Beetlejuice", title: "Clothing Pillows", likes: 894, dislikes: 52, favourites: 729, date: "19 Mar 2023", tag: "clothes")
            
            favVideo(image: "bee", username: "Edwin Khine", title: "Bee Craft", likes: 103, dislikes: 13, favourites: 729, date: "12 Aug 2022", tag: "plastic bo..")
            
        }
    }
}

struct ProfileFavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileFavouritesView()
    }
}
