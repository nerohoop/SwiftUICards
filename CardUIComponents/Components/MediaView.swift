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
    var isDarkMode: Bool = false
    var lineLimit: Int = 0
    var accessoryButton: CustomButton?
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
    
    private var titleColor: Color {
        return isDarkMode ? .white : .black
    }
    
    private var subtitleColor: Color {
        return isDarkMode ? .white : .gray
    }
    
    private var backgroundColor: Color {
        return isDarkMode ? .black : .white
    }
    
    private var accessoryColor: Color {
        return isDarkMode ? .white : .black
    }
    
    private let avatarSpacing: CGFloat = 10
    private let padding: CGFloat = 25
    private let cornerRadius: CGFloat = 10
    
    var body: some View {
        HStack(alignment: .center, spacing: avatarSpacing) {
            Avatar(image: avatar, size: .medium)
            
            VStack(alignment: .leading, spacing: 3) {
                Text(title)
                    .font(.title2)
                    .bold()
                    .foregroundColor(titleColor)
                
                Text(subtitle)
                    .font(.body)
                    .lineLimit(lineLimit)
                    .foregroundColor(subtitleColor)
            }
            
            Spacer()
            
            accessory
                .foregroundColor(accessoryColor)
                .font(Font.title3.weight(.medium))
            
            accessoryButton
        }
        .padding(padding)
        .background(backgroundColor)
        .cornerRadius(cornerRadius)
    }
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            MediaView(title: "Frank Esteban", subtitle: "Web Development", avatar: Image("avatar"), iconImage: Image(systemName: "camera"), isDarkMode: false)
                .frame(width: 360)
                .shadow(radius: 2)

            MediaView(title: "Frank Esteban", subtitle: "Web Development", avatar: Image("avatar"), iconImage: Image(systemName: "camera"), isDarkMode: true)
                .frame(width: 360)
                .shadow(radius: 2)
            
            MediaView(title: "Frank Esteban", subtitle: "Web Development", avatar: Image("avatar"), accessoryButton: CustomButton(text: "Follow", type: .outline, size: .small))
                .frame(width: 360)
                .shadow(radius: 2)
            
            MediaView(title: "Frank Esteban", subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing ipsum dolor sit amet, consectetur adipiscing", avatar: Image("avatar"), iconImage: Image(systemName: "camera"), isDarkMode: false, lineLimit: 3)
                .frame(width: 360)
                .shadow(radius: 2)

        }
    }
}
