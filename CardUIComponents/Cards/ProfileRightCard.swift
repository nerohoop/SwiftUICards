//
//  ProfileRightCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 24/08/2022.
//

import SwiftUI

struct ProfileRightCard: View {
    var title: String
    var subtitle: String
    var profile: Image
    
    private let cornerRadius: CGFloat = 20
    
    var body: some View {
        HStack {
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3) {
                Text(title)
                    .font(.title2)
                    .bold()
                
                Text(subtitle)
                    .font(.body)
            }
            
            Spacer()
                .frame(width: 25)
            
            profile
        }
        .background(.white)
        .cornerRadius(cornerRadius)
    }
}

struct ProfileRightCard_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRightCard(title: "Julia Robert", subtitle: "frontend development", profile: Image("avatar_3"))
            .frame(width: 360)
            .shadow(radius: 2)
    }
}
