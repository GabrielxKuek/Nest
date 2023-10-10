//
//  ProfileFollowingView.swift
//  Nest
//
//  Created by user on 11/10/23.
//

import SwiftUI

struct ProfileFollowingView: View {
    @State var followCheck1: Bool = true
    @State var followCheck2: Bool = true
    @State var followCheck3: Bool = true
    @State var followCheck4: Bool = true
    @State var followCheck5: Bool = true
    @State var followCheck6: Bool = true
    @State var followCheck7: Bool = true
    @State var followCheck8: Bool = true
    @State var followCheck9: Bool = true
    @State var followCheck10: Bool = true
    
    var body: some View {
        ScrollView {
            
            VStack {
                // Individual profiles
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("Username")
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    ZStack {
                        if(followCheck1) {
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: 100)
                                .cornerRadius(15)
                        } else {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 100)
                                .cornerRadius(15)
                        }
                                
                        
                        Button(action: {
                            followCheck1.toggle()
                        }) {
                            if (followCheck1) {
                                Text("Following")
                                    .foregroundColor(.white)
                            } else {
                                Text("Follow")
                                    .foregroundColor(.white)
                            }
                            
                        }
                        
                    }
                }
                
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("Username")
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    ZStack {
                        if(followCheck2) {
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: 100)
                                .cornerRadius(15)
                        } else {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 100)
                                .cornerRadius(15)
                        }
                                
                        
                        Button(action: {
                            followCheck2.toggle()
                        }) {
                            if (followCheck2) {
                                Text("Following")
                                    .foregroundColor(.white)
                            } else {
                                Text("Follow")
                                    .foregroundColor(.white)
                            }
                            
                        }
                        
                    }
                }
                
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("Username")
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    ZStack {
                        if(followCheck3) {
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: 100)
                                .cornerRadius(15)
                        } else {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 100)
                                .cornerRadius(15)
                        }
                                
                        
                        Button(action: {
                            followCheck3.toggle()
                        }) {
                            if (followCheck3) {
                                Text("Following")
                                    .foregroundColor(.white)
                            } else {
                                Text("Follow")
                                    .foregroundColor(.white)
                            }
                            
                        }
                        
                    }
                }
                
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("Username")
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    ZStack {
                        if(followCheck4) {
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: 100)
                                .cornerRadius(15)
                        } else {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 100)
                                .cornerRadius(15)
                        }
                                
                        
                        Button(action: {
                            followCheck4.toggle()
                        }) {
                            if (followCheck4) {
                                Text("Following")
                                    .foregroundColor(.white)
                            } else {
                                Text("Follow")
                                    .foregroundColor(.white)
                            }
                            
                        }
                        
                    }
                }
                
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("Username")
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    ZStack {
                        if(followCheck5) {
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: 100)
                                .cornerRadius(15)
                        } else {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 100)
                                .cornerRadius(15)
                        }
                                
                        
                        Button(action: {
                            followCheck5.toggle()
                        }) {
                            if (followCheck5) {
                                Text("Following")
                                    .foregroundColor(.white)
                            } else {
                                Text("Follow")
                                    .foregroundColor(.white)
                            }
                            
                        }
                        
                    }
                }
                
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("Username")
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    ZStack {
                        if(followCheck6) {
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: 100)
                                .cornerRadius(15)
                        } else {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 100)
                                .cornerRadius(15)
                        }
                                
                        
                        Button(action: {
                            followCheck6.toggle()
                        }) {
                            if (followCheck6) {
                                Text("Following")
                                    .foregroundColor(.white)
                            } else {
                                Text("Follow")
                                    .foregroundColor(.white)
                            }
                            
                        }
                        
                    }
                }
                
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("Username")
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    ZStack {
                        if(followCheck7) {
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: 100)
                                .cornerRadius(15)
                        } else {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 100)
                                .cornerRadius(15)
                        }
                                
                        
                        Button(action: {
                            followCheck7.toggle()
                        }) {
                            if (followCheck7) {
                                Text("Following")
                                    .foregroundColor(.white)
                            } else {
                                Text("Follow")
                                    .foregroundColor(.white)
                            }
                            
                        }
                        
                    }
                }
                
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("Username")
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    ZStack {
                        if(followCheck8) {
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: 100)
                                .cornerRadius(15)
                        } else {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 100)
                                .cornerRadius(15)
                        }
                                
                        
                        Button(action: {
                            followCheck8.toggle()
                        }) {
                            if (followCheck8) {
                                Text("Following")
                                    .foregroundColor(.white)
                            } else {
                                Text("Follow")
                                    .foregroundColor(.white)
                            }
                            
                        }
                        
                    }
                }
                
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("Username")
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    ZStack {
                        if(followCheck9) {
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: 100)
                                .cornerRadius(15)
                        } else {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 100)
                                .cornerRadius(15)
                        }
                                
                        
                        Button(action: {
                            followCheck9.toggle()
                        }) {
                            if (followCheck9) {
                                Text("Following")
                                    .foregroundColor(.white)
                            } else {
                                Text("Follow")
                                    .foregroundColor(.white)
                            }
                            
                        }
                        
                    }
                }
                
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("Username")
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    ZStack {
                        if(followCheck10) {
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: 100)
                                .cornerRadius(15)
                        } else {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 100)
                                .cornerRadius(15)
                        }
                                
                        
                        Button(action: {
                            followCheck10.toggle()
                        }) {
                            if (followCheck10) {
                                Text("Following")
                                    .foregroundColor(.white)
                            } else {
                                Text("Follow")
                                    .foregroundColor(.white)
                            }
                            
                        }
                        
                    }
                }
                
                
            }
            .padding(.horizontal)
            
        }
    }
}

struct ProfileFollowingView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileFollowingView()
    }
}
