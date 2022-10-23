//
//  DashboardPage.swift
//  Leap
//
//  Created by Aria Sharma on 10/22/22.
//

import SwiftUI

struct DashboardPage: View {
    var days: Days
    @State var streak = 7
    @State var completed = false
    @State var entry = "Reflect on the experience"
    @State private var isShowPhotoLibrary = false
    @State private var image = UIImage()
    
    var body: some View {
        
        ZStack {
            Color.yellow
                       .opacity(0.2)
                       .edgesIgnoringSafeArea(.all)
            VStack{
                Section{
                    HStack{
                        ForEach(Days.allCases) {days in
                            
                            Text(days.rawValue)
                                .fontWeight(.light)
                                .padding(10.0)
                                .font(.body)
                                .background(.green)
                                .clipShape(Circle())
                        }
                        
                        
                    }
                    .frame(height: 50.0)
                }
                Text("You are on a " + String(streak) +  " day Streak! ")
                Section{
                    VStack(alignment: .center) {
                        HStack {
                            Spacer()
                            Text("Current Challenge")
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .padding()
                            Spacer()
                        }
                        Section{
                            //Challenge!
                            HStack() {
                                Spacer()
                                //Replace with a variable
                                Text("GO OUTSIDE FOR A RUN AND DO A LOT OF HOMEWORK")
                                    .font(.callout)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(4)
                                Spacer()
                            }
                            .fixedSize(horizontal: false, vertical: true)
                            .padding()
                            .frame(width: 343)
                            .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                            .cornerRadius(8)
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color(red: 0.91, green: 0.91, blue: 0.91), lineWidth: 1))
                            
                        }
                        HStack {
                            Spacer()
                            Button(action: {
                                self.isShowPhotoLibrary = true}) {
                                Image(systemName: "photo")
                                    .font(.system(size: 20))
                                Text("Upload Photo")
                            }.fontWeight(.bold)
                                .foregroundColor(.black.opacity(0.5))
                                .padding()
                                .foregroundColor(.white)
                                .background(.mint.opacity(0.5))
                                .cornerRadius(10)
                            Spacer()
                            Image(uiImage: self.image)
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: 80, maxHeight: 80)
                                .edgesIgnoringSafeArea(.all)
                                .fontWeight(.light)
                                
                                .background(.gray.opacity(0.3))
                                .font(.body)
                            Spacer()
                        }
                        .padding(.top)
                        ScrollView {
                            Text("Reflection")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(.top)
                            TextEditor(text: $entry )
                                .scrollContentBackground(.hidden)
                                .foregroundColor(Color.black)
                                .lineSpacing(5)
                                .frame(height: 200)
                                .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                                .cornerRadius(7)
                        }
                        Spacer()
                        Button("Finish Challenge!") {
                            
                        }.fontWeight(.bold)
                            .font(.title2)
                            .foregroundColor(.black.opacity(0.5))
                            .padding(.horizontal, 32)
                            .padding(.vertical, 16)
                            .frame(width: 343)
                            .background(.mint.opacity(0.4))
                            .cornerRadius(100)
                        Spacer()
                        Spacer()
                        Spacer()
                        Button("Skip") {
                            
                        }.fontWeight(.bold)
                            .font(.title2)
                            .foregroundColor(.black.opacity(0.5))
                            .padding(.horizontal, 32)
                            .padding(.vertical, 16)
                            .frame(width: 343)
                            .background(Color.red.opacity(0.3))
                            .cornerRadius(100)
                        
                    }
                }
                .padding([.leading, .bottom, .trailing], 10)
                
            }
        }
        .sheet(isPresented: $isShowPhotoLibrary) {
            ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
        }
        Spacer()
        
    }
}
    


struct DashboardPage_Previews: PreviewProvider {
    static var previews: some View {
        DashboardPage(days: .Sat)
    }
}
