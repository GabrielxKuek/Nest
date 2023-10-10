//
//  TrueHomeView.swift
//  Nest
//
//  Created by user on 11/10/23.
//

import SwiftUI

struct TrueHomeView: View {
    var body: some View {
        VStack {
            SearchNavView()
            
            HomeView()
        }
    }
}

struct TrueHomeView_Previews: PreviewProvider {
    static var previews: some View {
        TrueHomeView()
    }
}
