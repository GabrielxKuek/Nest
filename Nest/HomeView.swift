//
//  HomeView.swift
//  Nest
//
//  Created by user on 10/10/23.
//

import SwiftUI

struct HomeView: View {
    @State var image: String = "Error 404, Image not found"
    @State var title: String = ""
    @State var username: String = "Username"
    @State var likes: Int = 0
    @State var dislikes: Int = 0
    @State var favourites: String = ""
    
    @State var mutelik: Bool = false
    @State var mutedis: Bool = false
    @State var mutefav: Bool = false
    
    func video(image: String, username: String, title: String, likes: Int, dislikes: Int, favourites: Bool, date: String, tag: String) -> some View {
        
        VStack {
            ZStack(alignment: .leading) {
                Image("\(image)")
                    .resizable()
                    .frame(width: 350, height: 200)
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
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding()
                            .font(.title)
                         
                        Spacer()
                        
                        Button (action: {
                            mutefav.toggle()
                        }) {
                            if (mutefav) {
                                Image(systemName: "star")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.yellow)
                                
                            } else {
                                Image(systemName: "star")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.yellow)
                                
                            }
                            
                        }
                        
                    }
                    .padding(.trailing)
                    
                }
            }
 
            HStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 35, height: 35)
                
                VStack(alignment: .leading) {
                    Text("\(username)")
                        .fontWeight(.bold)
                    
                    Text("\(date) | \(tag)")
                        .foregroundColor(.gray)
                        .font(.system(size: 14))
                }
                
                Spacer()
                
                // like button
                Button (action: {
                    mutelik.toggle()
                }) {
                    if (mutelik) {
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundColor(.blue)
                        
                    } else {
                        Image(systemName: "hand.thumbsup")
                        
                    }
                }
                
                if (mutelik) {
                    Text("\(likes + 1)")
                } else {
                    Text("\(likes)")
                }
                
                // dislike button
                Button (action: {
                    mutedis.toggle()
                }) {
                    if (mutedis) {
                        Image(systemName: "hand.thumbsdown.fill")
                            .foregroundColor(.blue)
                        
                    } else {
                        Image(systemName: "hand.thumbsdown")
                        
                    }
                }
                
                if (mutedis) {
                    Text("\(dislikes + 1)")
                    
                } else {
                    Text("\(dislikes)")
                    
                }
                
            }
        }
    }
     
    
    var body: some View {
        VStack {
        
        SearchNavView()
            
        ScrollView(showsIndicators: true){
                
            // Featured Tutorial
            ZStack {
                Image("pokemon")
                    .resizable()
                    .frame(height: 300)
                    .overlay(
                        LinearGradient(
                            gradient: Gradient(colors: [.black, .clear]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                        
                    )
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Pokemon Planters")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.largeTitle)
                            .padding(.vertical)
                        
                        Text("Ever wanted a pokemon pal to accompany you? Make a Pokemon planter from a plastic bottle!")
                            .foregroundColor(.white)
                            .frame(width: 200)
                            .padding(.bottom)
                        
                        Button(action: {
                            likes += 1
                        }) {
                            ZStack {
                                Rectangle()
                                    .fill(.blue)
                                    .frame(width: 150, height: 45)
                                    .cornerRadius(15)
                                
                                Text("More Info")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                
                            }
                        }
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text("2k+")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .offset(y: 110)
                        
                        Image(systemName: "hand.thumbsup.fill")
                            .resizable()
                            .foregroundColor(.blue)
                            .frame(width: 50, height: 50)
                            .offset(y: 100)
                    }
                    
                }
                .padding(.horizontal)
                
            }
            .padding(.bottom)
                
                // Continue Tutorial
                Text("Where You Left Off")
                    .offset(x: -105)
                    .fontWeight(.bold)
                
                // Horizontal Scroll
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack {
                        
                        // Example of a Testicle
                        video(image: "guitar", username: "Sam I Am", title:"Functional Guitar", likes: 542, dislikes: 32, favourites: true, date: "23 Jan 2023", tag: "cardboard, toy")
                        
                        video(image: "plane", username: "Guy Am I", title: "Working Plane", likes: 443, dislikes: 12, favourites: false, date: "4 Sep 2022", tag: "paper, cardboard")
                        
                        video(image: "denim-bucket", username: "NoobMaster69", title: "Bucket Jeans", likes: 103, dislikes: 22, favourites: false, date: "11 Oct 2023", tag: "clothes")
                         
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom)
                
                Text("Followed Creators")
                    .offset(x: -108)
                    .fontWeight(.bold)
                
                    // Horizontal Scroll 2
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack {
                            
                            video(image: "robot", username: "Thomas Edison", title: "Papercraft Robot", likes: 703, dislikes: 66, favourites: false, date: "9 Sep 2023", tag: "newspaper")
                            
                            video(image: "pillows", username: "Beetlejuice", title: "Clothing Pillows", likes: 894, dislikes: 52, favourites: false, date: "19 March 2023", tag: "clothes")
                            
                            // video(image: String, username: String, title: String, likes: Int, dislikes: Int, favourites: Int)
                            
                        }
                        .padding(.horizontal)
                    }
                    .padding(.bottom)
                
                Text("Beginner-Friendly")
                    .offset(x: -108)
                    .fontWeight(.bold)
                
                // Horizontal Scroll 3
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack {
                        
                        video(image: "teddy", username: "John D. Doe", title: "Clothing Bear Toys", likes: 996, dislikes: 42, favourites: true, date: "17 Jul 2023", tag: "clothes, toy")
                        
                        video(image: "old-man", username: "Terrence Chay", title: "Paper-mache Figure", likes: 403, dislikes: 88, favourites: false, date: "4 Oct 2023", tag: "newspaper")
                        
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom)
                
                Text("Short Projects")
                    .offset(x: -120)
                    .fontWeight(.bold)
                
                // Horizontal Scroll 4
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack {
                        
                        video(image: "santa", username: "Isaac Newton", title: "Santa Decoration!", likes: 233, dislikes: 13, favourites: false, date: "12 Aug 2022", tag: "paper")
                        
                        video(image: "bee", username: "Edwin Khine", title: "Bee Craft", likes: 103, dislikes: 13, favourites: false, date: "12 Aug 2022", tag: "plastic bottle")
                        
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

/*
 ScrollView {
     LazyVStack() {
         ForEach(filteredFeaturedGroups, id: \.title) { group in
             RoundedRectangle(cornerRadius: 10)
             
         }
     }
 }
 */
