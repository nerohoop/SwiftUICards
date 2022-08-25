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
    private let descriptionPadding: CGFloat = 16
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            MediaView(title: title, subtitle: subtitle, avatar: avatarImage, iconImage: Image(systemName: "camera"))

            contentImage?
                .resizable()
                .scaledToFill()
            
            Text(cardDescription)
                .font(.body)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .padding(descriptionPadding)
        }
        .background(.white)
        .cornerRadius(cornerRadius)
    }
}

struct BasicCard_Previews: PreviewProvider {
    static var previews: some View {
        BasicCard(avatarImage: Image("avatar"),
                  title: "Frank Esteban",
                  subtitle: "Web Development",
                  contentImage: Image("card_image"),
                  cardDescription: "This is a basic card")
            .frame(width: 360, height: 367)
            .shadow(radius: 2)
    }
}
