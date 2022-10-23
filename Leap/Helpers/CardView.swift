//
//  CardView.swift
//  Leap
//
//  Created by Aria Sharma on 10/23/22.
//

import SwiftUI

struct CardView: View {
    let post: ArchivedPost
    var body: some View {
        VStack(alignment: .leading) {
            Text(post.task)
                .font(.headline)
            HStack {
                Label("\(post.body)", systemImage: "")
                    .padding(.trailing, 20)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(.white)
    }
}

//struct CardView_Previews: PreviewProvider {
//    static var posts = [ArchivedPost.sampleData[0], ArchivedPost.sampleData[1], ArchivedPost.sampleData[2]]
////    static var post = ArchivedPost.sampleData[0]
////    static var post2 = ArchivedPost.sampleData[1]
//    static var previews: some View {
//        ForEach(posts.allCases) {
//            CardView(post: posts)
//                .background(.blue)
//                .previewLayout(.fixed(width: 400, height: 60))
//
//        }
//            }
//}
