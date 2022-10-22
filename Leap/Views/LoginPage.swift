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
        NavigationView {
            VStack {
                Form{
                    Section{
                    }
                    Section{
                        TextField("Username", text: $username).padding()
                        SecureField("Password", text: $password).padding()
                    } header: {
                        HStack {
                            Spacer()
                            Text("Login to your account")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.center)
                                .padding(.vertical)
                            Spacer()
                        }
                    }
                    Image("Wellness-Header")
                }
                
                Spacer()
                Section{
                    Button("Login"){
                        NavigationLink(destination: <#T##() -> _#>, label: <#T##() -> _#>)
                    }.fontWeight(.bold)
                        .font(.title2)
                        .padding(.horizontal, 32)
                        .padding(.vertical, 16)
                        .frame(width: 343)
                        .background(Color(red: 0.37, green: 0.69, blue: 0.46))
                        .cornerRadius(100)
                }
                
                Text("Don't have an account? Sign up Here")
                Spacer()
                
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
