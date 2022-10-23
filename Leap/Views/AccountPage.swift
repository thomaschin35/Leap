//
//  AccountPage.swift
//  Leap
//
//  Created by Aria Sharma on 10/22/22.
//

import SwiftUI

struct AccountPage: View {
    var body: some View {
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
                Text("[User's Name]")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                Text("@username")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                Spacer()
            }
            Spacer()
        }
        ContainerRelativeShape()
        ScrollView {
            Divider()
            Section{
                
            }
        }
    }
}

struct AccountPage_Previews: PreviewProvider {
    static var previews: some View {
        AccountPage()
    }
}
