//
//  MediaView.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 08/08/2022.
//

import SwiftUI

enum AccessoryType {
    case button, option, time
}

struct MediaView: View {
    var title: String
    var subtitle: String
    var avatar: Image
    var accessory: AccessoryType?
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Avatar(image: self.avatar, size: .medium)
            
            VStack(alignment: .leading, spacing: 3) {
                Text(self.title)
                    .font(.title2)
                    .bold()
                
                Text(self.subtitle)
                    .font(.body)
                    .foregroundColor(.gray)
            }
        }
        .padding([.leading, .trailing], 25)
    }
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView(title: "Frank Esteban", subtitle: "Web Development", avatar: Image("avatar"))
    }
}
