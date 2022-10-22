//
//  DataController.swift
//  Leap
//
//  Created by Thomas Chin on 10/22/22.
//

import Foundation
import CoreData

class DataController: ObservableObject{
    let container = NSPersistentContainer(name:  "PersonModel")
    
    init() {
        container.loadPersistentStores { desc, error in
            if let error = error {
                print("Failed to Load \(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Data Saved")
        } catch {
            print("We could not save the data")
        }
    }
    
    func addPerson(username: String, password: String, name: String, categ: [String], context: NSManagedObjectContext){
        let person = Person(context: context)
        person.categories = categ
        person.username = username
        person.password = password
        person.name = name
        
        save(context: context)
    }
    
    func editPerson(person: Person, name: String, categ: [String], context: NSManagedObjectContext) {
        
    }
}
