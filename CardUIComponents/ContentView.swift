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
                BasicCard(avatarImage: Image("avatar"), title: "Frank Esteban", subtitle: "Web Development", contentImage: Image("card_image"), cardDescription: "This is a basic card")
                    .listRowSeparator(.hidden)
                    .padding([.top, .bottom], 40)
                
                AvatarCard(title: "Yolanda", subtitle: "Backend Development", avatar: Image("avatar_2"), iconImage: Image(systemName: "camera"))
                    .background(
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(.white)
                            .shadow(radius: 4)
                    )
                    .listRowSeparator(.hidden)
                    .padding([.bottom], 20)
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
