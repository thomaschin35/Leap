//
//  DataController.swift
//  Leap
//
//  Created by Thomas Chin on 10/22/22.
//

import Foundation
import CoreData

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "PersonModel")
    
    
    init() {
        container.loadPersistentStores { desc, error in
            if let error = error {
                print("Failed to Load \(error.localizedDescription)")
            }
        }
    }
    
    func addPerson(username: String, password: String, name: String, categ: [String], context: NSManagedObjectContext) -> Person?{
        let person = NSEntityDescription.insertNewObject(forEntityName: "Person", into: context) as! Person
    
            person.categories = categ
            person.username = username
            person.password = password
            person.name = name

        do {
            try context.save()
            print("Data Saved")
            return person
        } catch {
            print("We could not save the data")
        }
        return nil
    }
    
    
    func fetchPerson() -> [Person]? {
        let context = NSManagedObjectContext()
        let fetchRequest = NSFetchRequest<Person>(entityName: "Person")
        
        do{
            let personDetails = try context.fetch(fetchRequest)
            return personDetails
        } catch let fetchError {
            print("Failed to fetch companies")
        }
        return nil
    }
}
