//
//  Register.swift
//  Leap
//
//  Created by Thomas Chin on 10/22/22.
//

import SwiftUI

struct RegisterPage: View {
    @Environment(\.managedObjectContext) var managedObj
    @Environment(\.dismiss) var dismiss
    @Binding var choices: Categories
    @State private var username = ""
    @State private var name = ""
    @State private var password = ""
    @State private var checkPassword = ""
    @State var categs: [String]
    @State private var isNotEqual = false
    @State private var checked = true
    @State private var showLogin = false

    
    var body: some View {
        
        
        ZStack {
            Color.yellow
                       .opacity(0.4)
                       .edgesIgnoringSafeArea(.all)
            VStack {
                Form {
                     Section{
                         TextField("Name", text: $name)
                         TextField("Username", text: $username)
                         SecureField("Password", text: $password)
                         SecureField("Confirm Password", text: $checkPassword)
                     } header: {
                         HStack {
                             Spacer()
                             Text("Create an Account")
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .padding(.vertical)
                             Spacer()
                         }
                     }
                    
                     ScrollView {
                             ForEach(Categories.allCases) { choices in
                                 CategoryOption(choices: choices, categs: $categs).tag(choices)
                             }
                         
                     }.frame(height: .minimum(300, 300))
                }.scrollContentBackground(.hidden)
                Section{
                    Button("Register") {
                        if password != checkPassword {
                            isNotEqual = true
                        } else {
                            showLogin = true
//                            var person = DataController().addPerson(username: username, password: password, name: name, categ: categs, context: managedObj)
                            NavigationLink("", destination:  LoginPage(), isActive: $showLogin)
                            dismiss()
                            
                        }
                        
                    }.fontWeight(.bold)
                        .font(.title2)
                        .padding(.horizontal, 32)
                        .padding(.vertical, 16)
                        .frame(width: 343)
                        .background(Color(red: 0.37, green: 0.69, blue: 0.46))
                        .cornerRadius(100)
                        .alert(isPresented: $isNotEqual) {
                            Alert(title: Text("Passwords do not match"),
                                              dismissButton: .default(Text("OK")))
                        }
            
                        
                }
                
                
            }
        }
        
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            RegisterPage(choices: .constant(.fun), categs: [""] )
        }
    }
}
