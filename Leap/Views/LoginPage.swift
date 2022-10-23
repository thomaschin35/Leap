//
//  Login.swift
//  Leap
//
//  Created by Thomas Chin on 10/22/22.
//

import SwiftUI

struct LoginPage: View {
    @Environment(\.managedObjectContext) var managedObj
    @Environment(\.dismiss) var dism
    
    @State private var username = ""
    @State private var password = ""
    @State private var showDashboard = false
    @State private var restricted = false
    @State private var canNavigate = false
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.yellow
                    .opacity(0.4)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Form{
                        Image("Wellness-Header").frame(maxHeight: 70)
                        Section{
                            TextField("Username", text: $username).padding()
                            SecureField("Password", text: $password).padding()
                        } header: {
                            HStack {
                                Spacer()
                                Text("Login to your account")
                                    .font(.title)
                                    .fontWeight(.heavy)
                                    .multilineTextAlignment(.center)
                                    .padding(.vertical)
                                Spacer()
                            }
                        }
                        
                    }.scrollContentBackground(.hidden)
                    
                    Spacer()
                    Section{
                        Button("Login"){
                            showDashboard = true
                            
                        }.fontWeight(.bold)
                            .font(.title2)
                            .padding(.horizontal, 32)
                            .padding(.vertical, 16)
                            .frame(width: 343)
                            .background(Color(red: 0.37, green: 0.69, blue: 0.46).opacity(0.5))
                            .cornerRadius(100)
                            .alert(isPresented: $restricted) {
                                Alert(title: Text("Incorrect Username and/or Password"),
                                      dismissButton: .default(Text("OK")))
                            }
                        NavigationLink("", destination:  DashboardPage(days: .Sat), isActive: $showDashboard)
                    }
                    
                    NavigationLink("Don't have an account? \nSign up Here", destination:  RegisterPage(choices: .constant(.health)), isActive: $canNavigate)
                        .font(.title2)
                        .padding(.horizontal, 32)
                        .padding(.vertical, 16)
                        .frame(width: 342.0)
                        .cornerRadius(100)
                        .onSubmit{
                            canNavigate = true
                        }
                    Spacer()
                    
                }
            }
        }
    }
    
    
    struct Login_Previews: PreviewProvider {
        static var previews: some View {
            LoginPage()
        }
    }
}
