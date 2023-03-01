//
//  DataController.swift
//  Bookworm
//
//  Created by Nick Pavlov on 2/27/23.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Error \(error.localizedDescription)")
            }
        }
    }
}
