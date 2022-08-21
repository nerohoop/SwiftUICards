//
//  BasicCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 08/08/2022.
//

import SwiftUI

struct BasicCard: View {
    var avatarImage: Image
    var title: String
    var subtitle: String
    var contentImage: Image?
    var contentText: String?
    var cardDescription: String
    
    private let padding = EdgeInsets(top: 14, leading: 0, bottom: 14, trailing: 0)
    private let cornerRadius: CGFloat = 20
    private let shadowRadius: CGFloat = 5
    
    var body: some View {
        VStack(alignment: .leading) {
            MediaView(title: title, subtitle: subtitle, avatar: avatarImage)
            
            contentImage?
                .resizable()
                .scaledToFill()
                .frame(width: 360, height: 200)
            
            Text(cardDescription)
                .font(.body)
                .foregroundColor(.gray)
                .padding([.top, .bottom, .trailing], 16)
                .padding(.leading, 25)
                
        }
        .padding()
        .fixedSize(horizontal: false, vertical: true)
        .background(
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .fill(.white)
                .shadow(radius: shadowRadius)
        )
    }
}

struct BasicCard_Previews: PreviewProvider {
    static var previews: some View {
        BasicCard(avatarImage: Image("avatar"), title: "Frank Esteban", subtitle: "Web Development", contentImage: Image("card_image"), cardDescription: "This is a basic card")
    }
}
