//
//  Avatar.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 08/08/2022.
//

import SwiftUI

enum AvatarSize {
    case small, medium, large, xlarge
}

struct Avatar: View {
    var image: Image
    var size: AvatarSize
    
    var width: CGFloat {
        switch self.size {
        case .small:
            return 30.0
        case .medium:
            return 60.0
        case .large:
            return 80.0
        case .xlarge:
            return 100.0
        }
    }
    
    var height: CGFloat {
        switch self.size {
        case .small:
            return 30.0
        case .medium:
            return 60.0
        case .large:
            return 80.0
        case .xlarge:
            return 100.0
        }
    }
    
    var body: some View {
        image
            .resizable()
            .clipShape(Circle())
            .frame(width: self.width, height: self.height)
    }
}

struct Avatar_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Avatar(image: Image("avatar"), size: .xlarge)
            Avatar(image: Image("avatar"), size: .large)
            Avatar(image: Image("avatar"), size: .medium)
            Avatar(image: Image("avatar"), size: .small)
        }
    }
}
