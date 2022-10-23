//
//  AccountPage.swift
//  Leap
//
//  Created by Aria Sharma on 10/22/22.
//

import SwiftUI

struct AccountPage: View {
    var body: some View {
        Form{
            Section{} header: {
                HStack {
                    Spacer()
                    Text("Profile")
                        .font(.title)
                        .multilineTextAlignment(.right)
                        .padding(.vertical)
                    Spacer()
                    
                    Button(action: {
                            }){
                                ZStack{
                                    Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(.blue)
                                    Text("Press me")
                                }
                            }
                    
                    
                    Button(action: {
                        .padding()
                        .foregroundColor(.white)
                        .background(.gray)
                        .cornerRadius(10)
                    }
                        .padding()
                        .foregroundColor(.white)
                        .background(.gray)
                        .cornerRadius(10)
                }
                Section{
                    VStack {
                        HStack {
                            Spacer()
                            Text("Current Challenge")
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .padding(.vertical)
                            Spacer()
                        }
                        Section{}
                        HStack {
                            Button("Upload Photo"){}
                                .padding()
                                .foregroundColor(.white)
                                .background(.gray)
                                .cornerRadius(10)
                            Spacer()
                            Button("Submit Reflection"){}
                                .padding()
                                .foregroundColor(.white)
                                .background(.gray)
                                .cornerRadius(10)
                        }
                    }
                }
                Divider()
                Section{
                    HStack {
                        Spacer()
                        Text("Weekly Challenge")
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .padding(.vertical)
                        Spacer()
                    }
                    Section{}
                    HStack {
                        VStack {
                            
                            Button("Upload Photo"){}
                                .padding()
                                .foregroundColor(.white)
                                .background(.gray)
                                .cornerRadius(10)
                            
                        }
                        Spacer()
                        Button("Submit Reflection"){}
                            .padding()
                            .foregroundColor(.white)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

    struct AccountPage_Previews: PreviewProvider {
        static var previews: some View {
            AccountPage()
        }
    }
