//
//  Upload2View.swift
//  Nest
//
//  Created by user on 11/10/23.
//

import SwiftUI

struct Upload2View: View {
    @State var material1: String = ""
    @State var material2: String = ""
    @State var stepTitle1: String = ""
    @State var stepDesc1: String = ""
    
    @State var materialCount1: Int = 1
    @State var materialCount2: Int = 1
    @State var postToggle: Bool = false
    
    var body: some View {
        
        VStack {
            
            ScrollView {
                HStack {
                    Text("Materials Required:")
                        .fontWeight(.bold)
                        .font(.title)
                    
                    Spacer()
                }
                
                // Material adding list
                VStack {
                    HStack {
                        Text("1.")
                            .font(.title)
                            .offset(y: 10)
                            .padding(.trailing, 5)
                        
                        TextField("Enter material", text: $material1)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.top, 20)
                        
                        ZStack {
                            Rectangle()
                                .fill(Color.gray.opacity(0.2))
                                .frame(width: 75, height: 54)
                                .cornerRadius(10)
                                .offset(y: 10)
                            
                            HStack {
                                Text("\(materialCount1)")
                                    .padding(.trailing)
                                
                                VStack {
                                    Button(action: {
                                        materialCount1 += 1
                                        
                                    }) {
                                        Image(systemName: "chevron.up")
                                            .padding(.bottom, 15)
                                    }
                                    
                                    Button(action: {
                                        if (materialCount1 != 1) {
                                            materialCount1 -= 1
                                        }
                                        
                                    }) {
                                        Image(systemName: "chevron.down")
                                    }
                                }
                            }
                            .offset(y: 10)
                            
                        }
                    }
                    
                    if (material1 != "") {
                        HStack {
                            Text("2.")
                                .font(.title)
                                .offset(y: 10)
                                .padding(.trailing, 5)
                            
                            TextField("Enter material", text: $material2)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                                .padding(.top, 20)
                            
                            ZStack {
                                Rectangle()
                                    .fill(Color.gray.opacity(0.2))
                                    .frame(width: 75, height: 54)
                                    .cornerRadius(10)
                                    .offset(y: 10)
                                
                                HStack {
                                    Text("\(materialCount2)")
                                        .padding(.trailing)
                                    
                                    VStack {
                                        Button(action: {
                                            materialCount2 += 1
                                            
                                        }) {
                                            Image(systemName: "chevron.up")
                                                .padding(.bottom, 15)
                                        }
                                        
                                        Button(action: {
                                            if (materialCount2 != 1) {
                                                materialCount2 -= 1
                                            }
                                            
                                        }) {
                                            Image(systemName: "chevron.down")
                                        }
                                    }
                                }
                                .offset(y: 10)
                                
                            }
                        }
                        .padding(.top, -10)
                    }
                    
                }
                .padding(.bottom)
                
                HStack {
                    Text("Steps:")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                
                HStack {
                    Text("1.")
                        .font(.title)
                        .padding(.trailing)
                    
                    ZStack {
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .frame(height: 300)
                            .cornerRadius(10)
                            .offset(y: 110)
                        
                        VStack {
                            TextField("Step Title", text: $stepTitle1)
                                .font(.title)
                            
                            TextField("Describe what you need to do", text: $stepDesc1)
                        }
                        .offset(x: 20, y: 15)
                        
                        Image(systemName: "plus.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .offset(x: 120, y: 220)
                    }
                    
                }
                .offset(y: -100)
                
            } // ScrollView Parent
            .padding(.horizontal)
            
            
            HStack {
                Spacer()
                
                Button(action: {
                    postToggle.toggle()
                    
                }) {
                    if (postToggle) {
                        ZStack {
                            Rectangle()
                                .fill(Color(red: 0.0, green: 0.5, blue: 0.12))
                                .frame(width: 100, height: 50)
                                .cornerRadius(20)

                            
                            Text("Posted!")
                                .foregroundColor(.white)
                        }
                    }
                    
                    else {
                        ZStack {
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: 100, height: 50)
                                .cornerRadius(20)
                            
                            Text("Post")
                                .foregroundColor(.white)
                        }
                    }
                }
            }
            .padding()
            
        } // VStack Parent
        
        
    }
}

struct Upload2View_Previews: PreviewProvider {
    static var previews: some View {
        Upload2View()
    }
}
