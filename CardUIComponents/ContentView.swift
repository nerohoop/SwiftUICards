//
//  ContentView.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                AvatarCard(title: "Yolanda", subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing lorem ipsum dolor sit amet, consectetur adipiscing...", avatar: Image("avatar_6"))
                    .shadow(radius: 2)
                    .listRowSeparator(.hidden)
                    .padding([.bottom], 20)
                
                ProfileFollowCard(title: "Johny", profile: Image("avatar_5"), accessoryImage: Image(systemName: "phone.fill"))
                    .shadow(radius: 2)
                    .padding([.bottom], 20)
                    .listRowSeparator(.hidden)
                
                BoldProfileCard(title: "Maria", profile: Image("avatar_4"), accessoryImage: Image(systemName: "phone.fill"))
                    .shadow(radius: 2)
                    .padding([.bottom], 20)
                    .listRowSeparator(.hidden)
                
                ProfileRightCard(title: "Julia Robert", subtitle: "frontend development", profile: Image("avatar_3"))
                    .shadow(radius: 2)
                    .padding([.bottom], 20)
                    .listRowSeparator(.hidden)
                
                ProfileCard(title: "Julia Robert", subtitle: "frontend development", profile: Image("avatar_3"))
                    .shadow(radius: 2)
                    .padding([.bottom], 20)
                    .listRowSeparator(.hidden)
                
                DarkAvatarCard(title: "Yolanda", subtitle: "Backend Development", avatar: Image("avatar_2"), iconImage: Image(systemName: "plus"))
                    .shadow(radius: 2)
                    .listRowSeparator(.hidden)
                    .padding([.bottom], 20)
                
                AvatarCard(title: "Yolanda", subtitle: "Backend Development", avatar: Image("avatar_2"), iconImage: Image(systemName: "camera"))
                    .shadow(radius: 2)
                    .listRowSeparator(.hidden)
                    .padding([.bottom], 20)
                
                BasicCard(avatarImage: Image("avatar"), title: "Frank Esteban", subtitle: "Web Development", contentImage: Image("card_image"), cardDescription: "This is a basic card")
                    .listRowSeparator(.hidden)
                    .padding([.bottom], 20)
                    .shadow(radius: 2)
            }
            .navigationTitle("Card Examples")
            .frame( maxWidth: .infinity)
            .listStyle(PlainListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
