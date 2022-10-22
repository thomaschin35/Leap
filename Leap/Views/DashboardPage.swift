//
//  DashboardPage.swift
//  Leap
//
//  Created by Aria Sharma on 10/22/22.
//

import SwiftUI

struct DashboardPage: View {
    var body: some View {
        Form{
            Section{} header: {
                        HStack {
                            Spacer()
                            Text("Dashboard")
                               .font(.title)
                               .multilineTextAlignment(.center)
                               .padding(.vertical)
                            Spacer()
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
        }
    }
}

struct DashboardPage_Previews: PreviewProvider {
    static var previews: some View {
        DashboardPage()
    }
}
