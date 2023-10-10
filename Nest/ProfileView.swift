//
//  ProfileView.swift
//  Nest
//
//  Created by user on 10/10/23.
//

import SwiftUI

struct ProfileView: View {
    @State var profilePicker: Int = 2
    
    var body: some View {
        VStack {
            SearchNavView()
            
            ScrollView {
                VStack {
                    // Profile
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Text("0 Uploads")
                        .foregroundColor(.gray)
                    Text("0 Favourited")
                        .foregroundColor(.gray)
                    
                }
                
                HStack {
                    
                    Button(action: {
                        profilePicker = 1
                        
                    }) {
                        ZStack {
                            Rectangle()
                                .fill(.white)
                                .overlay(
                                    Rectangle()
                                        .frame(height: 1)
                                        .padding(.top, 40)
                                        .foregroundColor(.gray)
                                )
                            
                            if (profilePicker == 1) {
                                Text("Posts")
                                    .foregroundColor(.black)
                                
                            } else {
                                Text("Posts")
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding(.trailing, -10)
                    }
                    
                    Button(action: {
                        profilePicker = 2
                    }) {
                        ZStack {
                            Rectangle()
                                .fill(.white)
                                .overlay(
                                    Rectangle()
                                        .frame(height: 1)
                                        .padding(.top, 40)
                                        .foregroundColor(.gray)
                                )
                            
                            if (profilePicker == 2) {
                                Text("Favourites")
                                    .foregroundColor(.black)
                                
                            } else {
                                Text("Favourites")
                                    .foregroundColor(.gray)
                            }

                        }
                        .padding(.horizontal, -10)
                    }
                    
                    Button(action: {
                        profilePicker = 3
                    }) {
                        ZStack {
                            Rectangle()
                                .fill(.white)
                                .overlay(
                                    Rectangle()
                                        .frame(height: 1)
                                        .padding(.top, 40)
                                        .foregroundColor(.gray)
                                )
                            
                            if (profilePicker == 3) {
                                Text("Following")
                                    .foregroundColor(.black)
                                
                            } else {
                                Text("Following")
                                    .foregroundColor(.gray)
                            }
                            
                        }
                        .padding(.leading, -10)
                    }
                    
                }
                .frame(height: 40)
                .padding(.bottom)
 
                if (profilePicker == 1) {
                    ProfilePostsView()
                } else if (profilePicker == 2) {
                    ProfileFavouritesView()\
                    
                } else if (profilePicker == 3) {
                    ProfileFollowingView()
                }
                
            } // ScrollView Parent
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
