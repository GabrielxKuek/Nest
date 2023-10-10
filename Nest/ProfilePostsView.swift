//
//  ProfilePostsView.swift
//  Nest
//
//  Created by user on 11/10/23.
//

import SwiftUI

struct ProfilePostsView: View {
    @State var searchPosts: String = ""
    
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
                    
                    // Example post
                    VStack {
                        Rectangle()
                            .fill(Color.blue)
                            .frame(height: 200)
                            .padding(.horizontal)
                        
                        Text("Title Here")
                            .font(.title)
                            .fontWeight(.bold)
                            .offset(x: -100)
                        
                        Text("DD MM YYYY | Tags, Tags")
                            .foregroundColor(.gray)
                            .offset(x: -65)
                    }
                    .padding(.bottom)
                    
                    VStack {
                        Rectangle()
                            .fill(Color.blue)
                            .frame(height: 200)
                            .padding(.horizontal)
                        
                        Text("Title Here")
                            .font(.title)
                            .fontWeight(.bold)
                            .offset(x: -100)
                        
                        Text("DD MM YYYY | Tags, Tags")
                            .foregroundColor(.gray)
                            .offset(x: -65)
                    }
                    .padding(.vertical)
                    
                    VStack {
                        Rectangle()
                            .fill(Color.blue)
                            .frame(height: 200)
                            .padding(.horizontal)
                        
                        Text("Title Here")
                            .font(.title)
                            .fontWeight(.bold)
                            .offset(x: -100)
                        
                        Text("DD MM YYYY | Tags, Tags")
                            .foregroundColor(.gray)
                            .offset(x: -65)
                    }
                    .padding(.vertical)
                        
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
