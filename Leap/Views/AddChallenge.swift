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
                        DataController().addChallenge(name: name, category: category, completed: false, reflection: "", context: managedObjectContext)
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
