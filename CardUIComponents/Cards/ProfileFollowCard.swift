//
//  ProfileFollowCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 24/08/2022.
//

import SwiftUI

struct ProfileFollowCard: View {
    var title: String
    var profile: Image
    var accessoryImage: Image?
    
    var body: some View {
        HStack {
            profile
            
            Spacer()
                .frame(width: 25)
            
            Text(title)
                .foregroundColor(.black)
                .font(.title2)
                .bold()
            
            Spacer()
            
            Button {
                print("Follow clicked")
            } label: {
                Text("Follow")
                    .font(.caption)
                    .bold()
            }
            .padding([.leading, .trailing], 16)
            .padding([.top, .bottom], 9)
            .foregroundColor(.white)
            .background(.black)
            .clipShape(Capsule())
            
            Spacer()
                .frame(width: 25)
        }
        .background(.white)
        .cornerRadius(20)
    }
}

struct ProfileFollowCard_Previews: PreviewProvider {
    static var previews: some View {
        ProfileFollowCard(title: "Johny", profile: Image("avatar_5"), accessoryImage: Image(systemName: "phone.fill"))
            .frame(width: 360)
            .shadow(radius: 2)
    }
}
