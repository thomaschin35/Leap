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
                        Image("Logo").frame(maxHeight:100).overlay(
                        ZStack{
                            Color.clear.background(.ultraThinMaterial).frame(minHeight: 200)
                            VStack {
                                Text("LEAP").font(.largeTitle.weight(.bold)).tracking(10)
//                                Text("Living your life to the Fullest")
//                                Text("SEEK DISCOMFORT")
                                
                            }
                        })
                        Section{
                            TextField("Username", text: $username).padding(.vertical, 8.0)
                            SecureField("Password", text: $password)
                                .padding(.all, 6.0)
                        } header: {
                            HStack {
                                Spacer()
                                Text("Login to your account")
                                    .font(.title)
                                    .fontWeight(.medium)
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
                            if(UserDefaults.standard.bool(forKey: "isChallengesAdded") == false) {
                                DataController().addChallenge(
                                    name: "Talk to a Stranger", category: "Social", completed: false, reflection: "", context: managedObj)
                                DataController().addChallenge(
                                    name: "Take at least a 10 minute walk", category:"Physical Health", completed: false, reflection: "", context: managedObj)
                                DataController().addChallenge(
                                    name: "Meditate for at least 5 minutes", category: "Mental Health", completed: false, reflection: "", context: managedObj)
                                DataController().addChallenge(
                                    name: "Journal about your past day", category: "Mindfulness", completed: false, reflection: "", context: managedObj)
                                DataController().addChallenge(
                                    name: "Compliment a Stranger", category: "Social", completed: false, reflection: "", context: managedObj)
                                DataController().addChallenge(
                                    name: "Ask a Stranger a random question", category: "Social", completed: false, reflection: "", context: managedObj)
                                DataController().addChallenge(
                                    name: "Organize your desk", category: "Academic", completed: false, reflection: "", context: managedObj)
                                UserDefaults.standard.set(true, forKey: "isChallengesAdded")
                                UserDefaults.standard.synchronize()
                            }
                            
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
        }.navigationViewStyle(.stack)
    }
    
    
    struct Login_Previews: PreviewProvider {
        static var previews: some View {
            LoginPage()
        }
    }
}
private func addInitialChallenges() {
    @Environment (\.managedObjectContext) var managedObjectContext;
        //addMoreTestBooks()
    DataController().addChallenge(
        name: "Talk to a Stranger", category: "Social", completed: false, reflection: "", context: managedObjectContext)
    
        

}

