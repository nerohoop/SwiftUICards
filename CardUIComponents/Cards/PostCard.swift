//
//  PostCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 11/09/2022.
//

import SwiftUI

struct PostCard: View {
    @State private var comment: String = ""

    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 10) {
                Avatar(image: Image("avatar_2"), size: .large)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Alexandro Vargas")
                        .font(.title3)
                        .bold()
                        .lineLimit(1)
                    
                    Text("Ayer 23:50")
                        .foregroundColor(.gray)
                }
                
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
                    .font(.title)
            }
            .frame(maxWidth: .infinity)
            .padding(25)
            
            Image("card_image_2")
                .resizable()
                .scaledToFit()
            
            HStack {
                
            }
            
            HStack {
                Avatar(image: Image("avatar"), size: .medium)
             
                HStack {
                    TextField("Comment", text: $comment)
                        .foregroundColor(.gray)
                        .frame(height: 34)
                    
                    Spacer()
                    
                    HStack(spacing: 5) {
                        Image(systemName: "camera")
                        Image(systemName: "face.smiling")
                        Image(systemName: "hand.thumbsup")
                    }
                }
                .padding([.top, .bottom], 10)
                .padding([.leading, .trailing], 20)
                .background(Color(0xF3F3F3))
                .cornerRadius(50)
            }
            .padding(25)
        }
        .background(.white)
        .cornerRadius(20)
        .shadow(radius: 4)
    }
}

struct PostCard_Previews: PreviewProvider {
    static var previews: some View {
        PostCard()
            .frame(width: 360)
    }
}
