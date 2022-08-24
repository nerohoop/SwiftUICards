//
//  ProfileCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 24/08/2022.
//

import SwiftUI

struct ProfileCard: View {
    var title: String
    var subtitle: String
    var profile: Image
    
    private let cornerRadius: CGFloat = 20
    
    var body: some View {
        HStack {
            profile
            
            Spacer()
                .frame(width: 25)
            
            VStack(alignment: .leading, spacing: 3) {
                Text(title)
                    .font(.title2)
                    .bold()
                
                Text(subtitle)
                    .font(.body)
            }
            
            Spacer()
        }
        .background(.white)
        .cornerRadius(cornerRadius)
    }
}

struct ProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCard(title: "Julia Robert", subtitle: "frontend development", profile: Image("avatar_3"))
            .frame(width: 360)
            .shadow(radius: 2)
    }
}
