//
//  ProfilePostsView.swift
//  Nest
//
//  Created by user on 11/10/23.
//

import SwiftUI

struct ProfilePostsView: View {
    @State var searchPosts: String = ""
    @State var liker: Bool = false
    @State var likey: Int = 223
    @State var unliker: Bool = false
    @State var unlikey: Int = 122
    
    func profilePost(image: String, title: String, desc: String, likes: Int, dislikes: Int) -> some View {
                    // example post
            VStack() {
                ZStack(alignment: .leading) {
                    
                    Image("\(image)")
                        .resizable()
                        .frame(height: 200)
                        .overlay (
                            LinearGradient(
                                gradient: Gradient(colors: [.black, .clear]),
                                startPoint: .bottom,
                                endPoint: .top
                            )
                        )
                        .padding(.horizontal)
                    
                    VStack {
                        Spacer()
                        
                        Text("\(title)")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .offset(x: 30)
                            .padding(.vertical)
                        
                    }
                    
                }
                
                HStack {
                    Text("\(desc)")
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    // likes button
                    Button (action: {
                        liker.toggle()
                    }) {
                        if (liker) {
                            Image(systemName: "hand.thumbsup.fill")
                                .foregroundColor(.blue)
                            
                        } else {
                            Image(systemName: "hand.thumbsup")
                            
                        }
                    }
                    
                    if (liker) {
                        Text("\(likes + 1)")
                        
                    } else {
                        Text("\(likes)")
                        
                    }
                    
                    // dislikes button
                    Button (action: {
                        unliker.toggle()
                    }) {
                        if (unliker) {
                            Image(systemName: "hand.thumbsdown.fill")
                                .foregroundColor(.blue)
                            
                        } else {
                            Image(systemName: "hand.thumbsdown")
                            
                        }
                    }
                    
                    if (unliker) {
                        Text("\(dislikes + 1)")
                        
                    } else {
                        Text("\(dislikes)")
                        
                    }
                    
                }
                .padding(.horizontal)
                
            }
        
    }
    
    var body: some View {
        VStack {
            
            ScrollView {
                
                VStack {
                    HStack {
                        Image(systemName: "slider.horizontal.3")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .offset(x: 12, y: 10)
                        
                        TextField("Search", text: $searchPosts)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.horizontal, 20)
                            .padding(.top, 20)
                    }
                    .padding(.bottom)
                    
                    profilePost(image: "sock-puppet", title: "Sock Puppet Tutorial", desc: "19 Jul 2022 | clothes", likes: 244, dislikes: 11)
                    
                    profilePost(image: "owl", title: "Owl Decoration", desc: "29 Dec 2022 | cardboard", likes: 324, dislikes: 17)
                    
                }
                .padding(.horizontal)
                
            } // ScrollView parent
        }
    }
}

struct ProfilePostsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePostsView()
    }
}
