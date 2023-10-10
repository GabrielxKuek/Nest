//
//  ProfileNav2View.swift
//  Nest
//
//  Created by user on 10/10/23.
//

import SwiftUI

struct ProfileNav2View: View {
    @State var profilePicker: Int = 2
    
    var body: some View {
        // Nav bar
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
    }
}

struct ProfileNav2View_Previews: PreviewProvider {
    static var previews: some View {
        ProfileNav2View()
    }
}
