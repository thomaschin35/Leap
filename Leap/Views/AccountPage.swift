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
                Divider()
                Text("Total Challenges Completed: " + String(challengesCompleted()))
                Divider()
                Section{
                    ScrollView {
                        List{
                            ForEach(challenges) { challenges in
                                NavigationLink(destination: Text("\(challenges.name)")) {
                                    HStack{
                                        
                                    }
                                }
                                
                            }
                        }
                        

                    }
                }
            }
        }
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
