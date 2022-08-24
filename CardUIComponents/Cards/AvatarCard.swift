//
//  AvatarCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 22/08/2022.
//

import SwiftUI

struct AvatarCard: View {
    var title: String
    var subtitle: String
    var avatar: Image
    var iconImage: Image?
    var accessoryClicked: (() -> Void) = {}
    
    var body: some View {
        MediaView(title: title, subtitle: subtitle, avatar: avatar, iconImage: iconImage, lineLimit: 2)
    }
}

struct AvatarCard_Previews: PreviewProvider {
    static var previews: some View {
        AvatarCard(title: "Yolanda", subtitle: "Backend Development", avatar: Image("avatar_2"), iconImage: Image(systemName: "camera"))
            .frame(width: 360)
            .shadow(radius: 2)
    }
}
