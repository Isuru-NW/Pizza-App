//
//  PizzaApplicationApp.swift
//  PizzaApplication
//
//  Created by user215958 on 5/22/22.
//

import SwiftUI

@main
struct PizzaApplicationApp: App {
    
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView() // Starting point of the app. Change the view according to what you want to show firstt
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
