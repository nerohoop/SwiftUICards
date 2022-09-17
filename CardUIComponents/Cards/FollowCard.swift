//
//  FollowCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 17/09/2022.
//

import SwiftUI

struct FollowCard: View {
    private var users = [
        User(avatar: "avatar", name: "Wade Warren", userInfo: "Dog Trainer"),
        User(avatar: "avatar_2", name: "Wade Warren", userInfo: "Dog Trainer"),
        User(avatar: "avatar_3", name: "Wade Warren", userInfo: "Dog Trainer"),
        User(avatar: "avatar_4", name: "Wade Warren", userInfo: "Dog Trainer"),
        User(avatar: "avatar_5", name: "Wade Warren", userInfo: "Dog Trainer")
    ]
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("Minim dolorin")
                    .font(.title)
                    .bold()
                
                Text("Minim dolor in amet nulla laboris enim dolore consequat.")
                    .font(.body)
                    .foregroundColor(Color(0x606060))
            }
            .padding([.top, .leading, .trailing], 25)
            
            VStack(alignment: .center, spacing: 0) {
                ForEach(users) { user in
                    MediaView(title: user.name, subtitle: user.userInfo, avatar: Image(user.avatar), accessoryButton: CustomButton(text: "Follow", type: .normal, size: .small, bgColor: Color(0xC223EA)))
                }
            }
            
            HStack {
                Text("555 Students")
                    .font(.footnote)
                    .foregroundColor(Color(0x606060))
                
                Spacer()
                
                Text("View all members")
                    .font(.body)
                    .bold()
            }
            .padding([.leading, .trailing], 25)
            .padding([.bottom], 20)
            .background(Color(0xFBFBFB))
        }
        .background(.white)
        .cornerRadius(20)
        .shadow(radius: 2)
    }
}

struct FollowCard_Previews: PreviewProvider {
    static var previews: some View {
        FollowCard()
            .frame(width: 360)
    }
}
