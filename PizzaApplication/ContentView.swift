//
//  ContentView.swift
//  
//
//  Created by user215958 on 4/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView { // Including a tab
            PizzaList()
                .tabItem { // It should be a VC + Should have a tab bar item.
                    Label("Pizza List", systemImage: "list.dash") /// `Label` to show a tab item
                }
            FavouriteList()
                .tabItem { /// Include `.tabItem` to ensure the view knows that the user
                    Label("Favourites", systemImage: "star.fill")

                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
