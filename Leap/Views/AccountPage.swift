//
//  AccountPage.swift
//  Leap
//
//  Created by Aria Sharma on 10/22/22.
//

import SwiftUI

struct AccountPage: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\Challenges.completed)]) var challenges:
        FetchedResults<Challenges>
    @Environment(\.dismiss) var dismiss
    @State private var showingAddView = false

    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    VStack{
                        Image ("profile pic ios app")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .shadow(radius: 10)
                            .padding(.horizontal)
                        Spacer()
                    }
                    VStack(alignment: .leading){
                        Text("George Burdell")
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .padding(.top)
                        Text("@gburdellgt35")
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                    Spacer()
                }
                
                Text("Total Challenges Completed: " + String(challengesCompleted()))
                
                Section{
                    ScrollView {
                        List{
                            ForEach(challenges) { Challenge in
                                NavigationLink(destination: Text("\(Challenge.name ?? "Sky Diving")")) {
                                    HStack{
                                        VStack(alignment: .leading, spacing: 6){
                                            Text("Challenge").bold()
                                            Text(String("\(Challenge.name)"))
                                        }
                                        Spacer()
                                        Text("J-Entry")
                                            .foregroundColor(.gray)
                                            .italic()
                                    }
                                }
                                
                            }.onDelete(perform: deleteChallenge)
                        }.listStyle(.plain)
                    }
                }
                .frame(minHeight: 500)
                Spacer()
                Spacer()
            }.navigationTitle("Profile / Archive")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            showingAddView.toggle()
                        } label: {
                            Label("Add Leap", systemImage: "plus.circle")
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        EditButton()
                    }
                }
                .sheet(isPresented: $showingAddView) {
                    AddChallenge()
                }
        }.navigationViewStyle(.stack)
        
    }
    private func deleteChallenge(offsets: IndexSet){
        
    }

    private func challengesCompleted() -> Int {
        return 5
    }
    
}


struct AccountPage_Previews: PreviewProvider {
    static var previews: some View {
        AccountPage()
    }
}
