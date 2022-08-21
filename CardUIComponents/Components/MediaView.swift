//
//  MediaView.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 08/08/2022.
//

import SwiftUI

struct MediaView: View {
    var title: String
    var subtitle: String
    var avatar: Image
    var iconImage: Image?
    var accessoryClicked: (() -> Void) = {}
    
    private var accessory: Button<Image>? {
        guard let iconImage = iconImage else {
            return nil
        }

        return Button {
            accessoryClicked()
        } label: {
            iconImage
        }
    }
    
    private let avatarSpacing: CGFloat = 10
    private let padding: CGFloat = 25
    
    var body: some View {
        HStack(alignment: .center, spacing: avatarSpacing) {
            Avatar(image: avatar, size: .medium)
            
            VStack(alignment: .leading, spacing: 3) {
                Text(title)
                    .font(.title2)
                    .bold()
                
                Text(subtitle)
                    .font(.body)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            accessory
                .foregroundColor(.black)
                .font(Font.title3.weight(.medium))
        }
        .padding(padding)
    }
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView(title: "Frank Esteban", subtitle: "Web Development", avatar: Image("avatar"), iconImage: Image(systemName: "camera"))
            .frame(width: 360)
            .background(
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(.white)
                    .shadow(radius: 2)
            )
    }
}
