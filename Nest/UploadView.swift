//
//  UploadView.swift
//  Nest
//
//  Created by user on 10/10/23.
//

import SwiftUI

struct UploadView: View {
    @State var postTitle: String = ""
    @State var postDesc: String = ""
    @State var searchTags: String = ""
    
    var body: some View {
        
        VStack {
            SearchNavView()
            
            NavigationView {
                
                ScrollView() {
                    
                    // Post Details
                    
                    VStack {
                        TextField("Title", text: $postTitle)
                            .fontWeight(.bold)
                            .font(.title)
                        
                        TextField("Enter a brief description of your craft", text: $postDesc)
                            .padding(.bottom, 175)
                            .padding(.horizontal)
                            .padding(.top)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(30)
                        
                        HStack {
                            Text("Tags:")
                                .fontWeight(.bold)
                                .font(.title)
                            
                            Spacer()
                        }
                        .padding(.top)
                        
                        // Search bar
                        TextField("Search", text: $searchTags)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.bottom)
                        
                        HStack {
                            
                            // Tag Button
                            ZStack {
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 50)
                                    .cornerRadius(20)
                                
                                HStack {
                                    Text("Cloth")
                                        .foregroundColor(.white)
                                        .fontWeight(.bold)
                                    
                                    Image(systemName: "xmark")
                                        .foregroundColor(.white)
                                }
                            }
                            
                            ZStack {
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 150, height: 50)
                                    .cornerRadius(20)
                                
                                HStack {
                                    Text("Plastic Bottle")
                                        .foregroundColor(.white)
                                        .fontWeight(.bold)
                                    
                                    Image(systemName: "xmark")
                                        .foregroundColor(.white)
                                }
                            }
                            
                            Spacer()
                        }
                        
                    } // VStack in Scrollview
                    .padding(.horizontal)
                    
                    // Navigate to next upload step
                    HStack {
                        Spacer()
                        
                        ZStack {
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: 100, height: 50)
                                .cornerRadius(20)
                            
                            NavigationLink (
                                destination: Upload2View(),
                                label: {
                                    Text("Next")
                                        .foregroundColor(.white)
                                        .fontWeight(.bold)
                                })
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                    
                } // Parent ScrollView
                
            }
        }
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
