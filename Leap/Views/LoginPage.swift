//
//  Login.swift
//  Leap
//
//  Created by Thomas Chin on 10/22/22.
//

import SwiftUI

struct Login: View {
    @Environment(\.managedObjectContext) var managedObj
    @Environment(\.dismiss) var dism
    
    @State private var username = ""
    @State private var password = ""
    
    
    var body: some View {
        VStack {
            Form{
                Section {
                }
                Section(header: Text("Login")
                    .font(.title)
                    .fontWeight(.black)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 5.0)){
                    TextField("Username", text: $username).padding()
                    TextField("Password", text: $password).padding()
                }
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
