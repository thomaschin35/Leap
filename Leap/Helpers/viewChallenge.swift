//
//  viewChallenge.swift
//  Leap
//
//  Created by Thomas Chin on 10/23/22.
//

import SwiftUI

struct viewChallenge: View {
    var body: some View {
        let challenges: Challenges 
        VStack{
            Spacer()
            Text("Challenge: " + challenges.name)
            
            Spacer()
        }
    }
}

struct viewChallenge_Previews: PreviewProvider {
    static var previews: some View {
        viewChallenge()
    }
}
