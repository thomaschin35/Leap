//
//  DataController.swift
//  Leap
//
//  Created by Thomas Chin on 10/22/22.
//

import Foundation
import CoreData
import SwiftUI

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "PersonModel")
    
    
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
    
    func addChallenge(name: String, category: String, completed: Bool, reflection: String, context: NSManagedObjectContext){
        let challenge = Challenges(context: context)
//        person.categories = categ
        challenge.name = name
        challenge.category = category
        challenge.completed = completed
        challenge.reflection = reflection

        save(context: context)
        
    }
    
    func updateChallenge(challenge: Challenges, completed: Bool, context: NSManagedObjectContext){
//        person.categories = categ
        challenge.completed = completed

        save(context: context)
        
    }

    
//    func fetchPerson() -> [Person]? {
//        let context = NSManagedObjectContext()
//        let fetchRequest = NSFetchRequest<Person>(entityName: "Person")
//        fetchRequest.fetchLimit = 1
//        do{
//            let personDetails = try context.fetch(fetchRequest)
//            return personDetails
//        } catch let fetchError {
//            print("Failed to fetch Person")
//        }
//        return nil
//    }
}
