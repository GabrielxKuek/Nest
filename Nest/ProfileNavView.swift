//
//  ProfileNavView.swift
//  Nest
//
//  Created by user on 10/10/23.
//

import SwiftUI

struct ProfileNavView: View {
    var body: some View {
        VStack {
            // Profile
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 100, height: 100)
            
            Text("2 Uploads")
                .foregroundColor(.gray)
            Text("44 Favourites Received")
                .foregroundColor(.gray)
            
        }
    }
}

struct ProfileNavView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileNavView()
    }
}
