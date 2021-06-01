//
//  ContentView.swift
//  LearningApp
//
//  Created by Christian Zagorski on 5/7/21.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var model: ContentModel

    
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Text("Hello, world!")
                .padding()
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
