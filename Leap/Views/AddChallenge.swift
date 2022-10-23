//
//  AddChallenge.swift
//  Leap
//
//  Created by Aria Sharma on 10/23/22.
//

import SwiftUI

struct AddChallenge: View {
    @Environment (\.managedObjectContext) var managedObjectContext
    @Environment (\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var category = ""
    var body: some View {
        Form {
            Section {
                TextField("Create your own task", text: $name)
                TextField("What category does this task belong in?", text: $category)
                HStack {
                    Spacer()
                    Button ("Submit") {
                        /*DataController().addPerson(username: <#T##String#>, password: <#T##String#>, name: <#T##String#>, categ: <#T##[String]#>, context: <#T##NSManagedObjectContext#>)
                         */
                        /*Datacontroller().addTask(priority: <#T##_Concurrency.TaskPriority?#>, operation: <#T##() -> ChildTaskResult#>)
                         */
                        dismiss()
                    }
                    Spacer()
                }
            }
        }
    }
}

struct AddChallenge_Previews: PreviewProvider {
    static var previews: some View {
        AddChallenge()
    }
}
