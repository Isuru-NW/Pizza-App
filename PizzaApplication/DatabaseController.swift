//
//  DataController.swift
//  PizzaApplication
//
//  Created by user215958 on 5/22/22.
//

import CoreData
import Foundation

/*
 * Only a single instance of `DataConroller` is used for the entire application for reading/writing data
 * We will be injecting the container to the environment so that all view/controllers can access it if they want to
 */
class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Pizzas") // Loads/Caches the container
    
    init() {
        container.loadPersistentStores { description, error in // Actually loading it into RAM
            if let error = error {
                print("Core Data loading error: \(error.localizedDescription)")
            }
        }
    }
}
