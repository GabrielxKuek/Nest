//
//  HomeView.swift
//  Nest
//
//  Created by user on 10/10/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            
        ScrollView(showsIndicators: true){
                
                // Featured Tutorial
                Rectangle()
                    .fill(Color(UIColor.darkGray))
                    .frame(height: 300)
                    .padding(.bottom)
                
                // Continue Tutorial
                Text("Where You Left Off")
                    .offset(x: -105)
                    .fontWeight(.bold)
                
                // Horizontal Scroll
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack {
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 250, height: 150)
                        
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 250, height: 150)
                        
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 250, height: 150)
                        
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
                            Rectangle()
                                .fill(Color.blue)
                                .frame(width: 250, height: 150)
                            
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: 250, height: 150)
                            
                            Rectangle()
                                .fill(Color.red)
                                .frame(width: 250, height: 150)
                            
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
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 250, height: 150)
                        
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 250, height: 150)
                        
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 250, height: 150)
                        
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
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 250, height: 150)
                        
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 250, height: 150)
                        
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 250, height: 150)
                        
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
