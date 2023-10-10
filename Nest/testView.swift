//
//  testView.swift
//  Nest
//
//  Created by user on 11/10/23.
//

import SwiftUI

struct testView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to Initial Page!")
                
                NavigationLink(
                    destination: ContentView(),
                    
                    label: {
                        Text("Go to second page")
                    }
                    
                )
            }
        }
    }
}

struct testView_Previews: PreviewProvider {
    static var previews: some View {
        testView()
    }
}
