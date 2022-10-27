//
//  SplashScreenView.swift
//  Leap
//
//  Created by Thomas Chin on 10/26/22.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive{
            LoginPage()
        } else {
            VStack {
                VStack {
                    ZStack{
                        Image("Logo")
                            .clipShape(Circle())
                        
                        VStack {
                            Text(" ")
                                .padding(1.0)
                            Text(" ")
                                .padding(1.0)
                            Text(" ")
                                .padding(1.0)
                            Text(" ")
                                .padding(1.0)
                            Text("LEAP").font(.largeTitle.weight(.bold)).padding(10).tracking(10)
                        }
                    }
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
